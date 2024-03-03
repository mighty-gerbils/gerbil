(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1709457374)
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
      (lambda (_path158279_ _fun158280_)
        (with-output-to-file
         (let ((__tmp158373
                (let ()
                  (declare (not safe))
                  (cons _path158279_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp158373))
         _fun158280_)))
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
      (lambda (_gerbil-libdir158274_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir158274_)))
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
      (lambda (_dir158272_) (delete-file-or-directory _dir158272_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath158246_ _opts158247_)
        (if (let () (declare (not safe)) (string? _srcpath158246_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158246_)))
        (let ((_outdir158249_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158247_)))
              (_invoke-gsc?158250_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158247_)))
              (_gsc-options158251_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158247_)))
              (_keep-scm?158252_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158247_)))
              (_verbosity158253_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158247_)))
              (_optimize158254_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts158247_)))
              (_debug158255_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158247_)))
              (_gen-ssxi158256_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts158247_))))
          (if _outdir158249_
              (let ((__tmp158374
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158249_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158374))
              '#!void)
          (if _optimize158254_
              (let ((__tmp158375
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158375))
              '#!void)
          (let ((__tmp158379
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath158246_))
                   (let ((__tmp158380
                          (let ((__tmp158381
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158246_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158381))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp158380))))
                (__tmp158378
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158376
                 (let ((__tmp158377
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158246_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp158377))))
            (declare (not safe))
            (call-with-parameters
             __tmp158379
             gxc#current-compile-output-dir
             _outdir158249_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158250_
             gxc#current-compile-gsc-options
             _gsc-options158251_
             gxc#current-compile-keep-scm
             _keep-scm?158252_
             gxc#current-compile-verbose
             _verbosity158253_
             gxc#current-compile-optimize
             _optimize158254_
             gxc#current-compile-debug
             _debug158255_
             gxc#current-compile-generate-ssxi
             _gen-ssxi158256_
             gxc#current-compile-timestamp
             __tmp158378
             gxc#current-compile-context
             __tmp158376
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath158265_)
        (let ((_opts158267_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath158265_ _opts158267_))))
    (define gxc#compile-module
      (lambda _g158383_
        (let ((_g158382_ (let () (declare (not safe)) (##length _g158383_))))
          (cond ((let () (declare (not safe)) (##fx= _g158382_ 1))
                 (apply (lambda (_srcpath158265_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath158265_)))
                        _g158383_))
                ((let () (declare (not safe)) (##fx= _g158382_ 2))
                 (apply (lambda (_srcpath158269_ _opts158270_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath158269_
                             _opts158270_)))
                        _g158383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g158383_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath158222_ _opts158223_)
        (if (let () (declare (not safe)) (string? _srcpath158222_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158222_)))
        (let ((_outdir158225_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158223_)))
              (_invoke-gsc?158226_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158223_)))
              (_gsc-options158227_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158223_)))
              (_keep-scm?158228_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158223_)))
              (_verbosity158229_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158223_)))
              (_debug158230_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158223_))))
          (if _outdir158225_
              (let ((__tmp158384
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158225_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158384))
              '#!void)
          (let ((__tmp158388
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath158222_))
                   (let ((__tmp158389
                          (let ((__tmp158390
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158222_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158390))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp158389
                      _opts158223_))))
                (__tmp158387
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158385
                 (let ((__tmp158386
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158222_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp158386))))
            (declare (not safe))
            (call-with-parameters
             __tmp158388
             gxc#current-compile-output-dir
             _outdir158225_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158226_
             gxc#current-compile-gsc-options
             _gsc-options158227_
             gxc#current-compile-keep-scm
             _keep-scm?158228_
             gxc#current-compile-verbose
             _verbosity158229_
             gxc#current-compile-debug
             _debug158230_
             gxc#current-compile-timestamp
             __tmp158387
             gxc#current-compile-context
             __tmp158385
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath158238_)
        (let ((_opts158240_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath158238_ _opts158240_))))
    (define gxc#compile-exe
      (lambda _g158392_
        (let ((_g158391_ (let () (declare (not safe)) (##length _g158392_))))
          (cond ((let () (declare (not safe)) (##fx= _g158391_ 1))
                 (apply (lambda (_srcpath158238_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath158238_)))
                        _g158392_))
                ((let () (declare (not safe)) (##fx= _g158391_ 2))
                 (apply (lambda (_srcpath158242_ _opts158243_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath158242_ _opts158243_)))
                        _g158392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g158392_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx158218_ _opts158219_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts158219_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx158218_
               _opts158219_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx158218_
               _opts158219_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx158101_ _opts158102_)
        (letrec ((_generate-stub158104_
                  (lambda (_builtin-modules158214_)
                    (let ((_mod-main158216_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158101_ 'main))))
                      (write (let ((__tmp158393
                                    (let ((__tmp158394
                                           (let ((__tmp158395
                                                  (let ((__tmp158396
                                                         (let ((__tmp158398
                                                                (let ((__tmp158399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules158214_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158399)))
                       (__tmp158397
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp158398 __tmp158397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp158396))))
                                             (declare (not safe))
                                             (cons __tmp158395 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp158394))))
                               (declare (not safe))
                               (cons 'define __tmp158393)))
                      (write (let ((__tmp158400
                                    (let ((__tmp158439
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158401
                                           (let ((__tmp158402
                                                  (let ((__tmp158403
                                                         (let ((__tmp158427
                                                                (let ((__tmp158428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158429
                                      (let ((__tmp158437
                                             (let ((__tmp158438
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp158438)))
                                            (__tmp158430
                                             (let ((__tmp158431
                                                    (let ((__tmp158432
                                                           (let ((__tmp158433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158434
                                 (let ((__tmp158435
                                        (let ((__tmp158436
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp158436 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp158435))))
                            (declare (not safe))
                            (cons __tmp158434 '()))))
                     (declare (not safe))
                     (cons _mod-main158216_ __tmp158433))))
              (declare (not safe))
              (cons 'apply __tmp158432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158431 '()))))
                                        (declare (not safe))
                                        (cons __tmp158437 __tmp158430))))
                                 (declare (not safe))
                                 (cons '() __tmp158429))))
                          (declare (not safe))
                          (cons 'lambda __tmp158428)))
                       (__tmp158404
                        (let ((__tmp158405
                               (let ((__tmp158406
                                      (let ((__tmp158407
                                             (let ((__tmp158418
                                                    (let ((__tmp158419
                                                           (let ((__tmp158420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158421
                                 (let ((__tmp158422
                                        (let ((__tmp158423
                                               (let ((__tmp158424
                                                      (let ((__tmp158425
                                                             (let ((__tmp158426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp158426 '()))))
                (declare (not safe))
                (cons 'force-output __tmp158425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp158424 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp158423))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp158422))))
                            (declare (not safe))
                            (cons __tmp158421 '()))))
                     (declare (not safe))
                     (cons 'void __tmp158420))))
              (declare (not safe))
              (cons 'with-catch __tmp158419)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp158408
                                                    (let ((__tmp158409
                                                           (let ((__tmp158410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158411
                                 (let ((__tmp158412
                                        (let ((__tmp158413
                                               (let ((__tmp158414
                                                      (let ((__tmp158415
                                                             (let ((__tmp158416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp158417
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp158417 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp158416))))
                (declare (not safe))
                (cons __tmp158415 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp158414))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp158413))))
                                   (declare (not safe))
                                   (cons __tmp158412 '()))))
                            (declare (not safe))
                            (cons 'void __tmp158411))))
                     (declare (not safe))
                     (cons 'with-catch __tmp158410))))
              (declare (not safe))
              (cons __tmp158409 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158418
                                                     __tmp158408))))
                                        (declare (not safe))
                                        (cons '() __tmp158407))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp158406))))
                          (declare (not safe))
                          (cons __tmp158405 '()))))
                   (declare (not safe))
                   (cons __tmp158427 __tmp158404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp158403))))
                                             (declare (not safe))
                                             (cons __tmp158402 '()))))
                                      (declare (not safe))
                                      (cons __tmp158439 __tmp158401))))
                               (declare (not safe))
                               (cons 'define __tmp158400)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts158105_
                  (lambda (_libgerbil158212_)
                    (call-with-input-file
                     (string-append _libgerbil158212_ '".ldd")
                     read)))
                 (_replace-extension158106_
                  (lambda (_path158209_ _ext158210_)
                    (string-append
                     (path-strip-extension _path158209_)
                     _ext158210_)))
                 (_not-exclude-module?158107_
                  (lambda (_ctx158205_)
                    (let ((_id-str158207_
                           (symbol->string
                            (##structure-ref
                             _ctx158205_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp158441
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str158207_))))
                            (declare (not safe))
                            (not __tmp158441))
                          (let ((__tmp158440
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str158207_))))
                            (declare (not safe))
                            (not __tmp158440))
                          '#f))))
                 (_not-file-empty?158108_
                  (lambda (_path158203_)
                    (let ((__tmp158442
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path158203_))))
                      (declare (not safe))
                      (not __tmp158442))))
                 (_compile-stub158109_
                  (lambda (_output-scm158116_ _output-bin158117_)
                    (let* ((_gerbil-home158119_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158121_
                            (path-expand '"lib" _gerbil-home158119_))
                           (_gerbil-staticdir158123_
                            (path-expand '"static" _gerbil-libdir158121_))
                           (_gxlink158125_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir158121_))
                           (_tmp158127_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path158131_
                            (lambda (_f158129_)
                              (path-expand
                               (path-strip-directory _f158129_)
                               _tmp158127_)))
                           (_deps158133_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158101_)))
                           (_deps158135_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?158107_
                                      _deps158133_)))
                           (_src-deps-scm158137_
                            (map gxc#find-static-module-file _deps158135_))
                           (_src-deps-scm158139_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?158108_
                                      _src-deps-scm158137_)))
                           (_src-deps-scm158141_
                            (map path-expand _src-deps-scm158139_))
                           (_deps-scm158143_
                            (map _tmp-path158131_ _src-deps-scm158141_))
                           (_deps-c158149_
                            (map (lambda (_g158144158146_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158106_
                                      _g158144158146_
                                      '".c")))
                                 _deps-scm158143_))
                           (_deps-o158155_
                            (map (lambda (_g158150158152_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158106_
                                      _g158150158152_
                                      '".o")))
                                 _deps-scm158143_))
                           (_src-bin-scm158157_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158101_)))
                           (_src-bin-scm158159_
                            (path-expand _src-bin-scm158157_))
                           (_bin-scm158161_
                            (let ()
                              (declare (not safe))
                              (_tmp-path158131_ _src-bin-scm158159_)))
                           (_bin-c158163_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158106_
                               _bin-scm158161_
                               '".c")))
                           (_bin-o158165_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158106_
                               _bin-scm158161_
                               '".o")))
                           (_output-bin158167_
                            (path-expand _output-bin158117_))
                           (_output-scm158169_
                            (path-expand _output-scm158116_))
                           (_output-c158171_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158106_
                               _output-scm158169_
                               '".c")))
                           (_output-o158173_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158106_
                               _output-scm158169_
                               '".o")))
                           (_output_-c158175_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158106_
                               _output-scm158169_
                               '"_.c")))
                           (_output_-o158177_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158106_
                               _output-scm158169_
                               '"_.o")))
                           (_gsc-link-opts158179_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158181_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158183_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir158123_)))
                           (_output-ld-opts158185_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a158187_
                            (path-expand '"libgerbil.a" _gerbil-libdir158121_))
                           (_libgerbil.so158189_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir158121_))
                           (_libgerbil-ld-opts158191_
                            (if (file-exists? _libgerbil.so158189_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts158105_
                                   _libgerbil.so158189_))
                                (if (file-exists? _libgerbil.a158187_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts158105_
                                       _libgerbil.a158187_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a158187_
                                       _libgerbil.so158189_)))))
                           (_rpath158193_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158121_)))
                           (_builtin-modules158197_
                            (map (lambda (_mod158195_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod158195_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx158101_ _deps158135_)))))
                      (let ((__tmp158443
                             (lambda ()
                               (let ((__tmp158444
                                      (path-directory _output-bin158167_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158444)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158443))
                      (let ((__tmp158445
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub158104_
                                  _builtin-modules158197_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158169_
                         __tmp158445))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158446
                                   (lambda () (create-directory _tmp158127_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp158446))
                            (for-each
                             copy-file
                             _src-deps-scm158141_
                             _deps-scm158143_)
                            (copy-file _src-bin-scm158159_ _bin-scm158161_)
                            (let ((__tmp158454
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158447
                                   (let ((__tmp158448
                                          (let ((__tmp158449
                                                 (let ((__tmp158450
                                                        (let ((__tmp158451
                                                               (let ((__tmp158452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158453
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm158169_ '()))))
                                (declare (not safe))
                                (cons _bin-scm158161_ __tmp158453))))
                         (declare (not safe))
                         (foldr1 cons __tmp158452 _deps-scm158143_))))
                  (declare (not safe))
                  (foldr1 cons __tmp158451 _gsc-link-opts158179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink158125_
                                                         __tmp158450))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp158449))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158448))))
                              (declare (not safe))
                              (gxc#invoke __tmp158454 __tmp158447))
                            (let ((__tmp158462
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158455
                                   (let ((__tmp158456
                                          (let ((__tmp158457
                                                 (let ((__tmp158458
                                                        (let ((__tmp158459
                                                               (let ((__tmp158460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158461
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c158175_ '()))))
                                (declare (not safe))
                                (cons _output-c158171_ __tmp158461))))
                         (declare (not safe))
                         (cons _bin-c158163_ __tmp158460))))
                  (declare (not safe))
                  (foldr1 cons __tmp158459 _deps-c158149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158458
                                                           _gsc-static-opts158183_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158457
                                                    _gsc-cc-opts158181_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158456))))
                              (declare (not safe))
                              (gxc#invoke __tmp158462 __tmp158455))
                            (let ((__tmp158475
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158463
                                   (let ((__tmp158464
                                          (let ((__tmp158465
                                                 (let ((__tmp158466
                                                        (let ((__tmp158467
                                                               (let ((__tmp158468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158469
                                     (let ((__tmp158470
                                            (let ((__tmp158471
                                                   (let ((__tmp158472
                                                          (let ((__tmp158473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp158474
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts158191_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp158474))))
                    (declare (not safe))
                    (cons _gerbil-libdir158121_ __tmp158473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp158472))))
                                              (declare (not safe))
                                              (cons _rpath158193_
                                                    __tmp158471))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp158470
                                               _output-ld-opts158185_))))
                                (declare (not safe))
                                (cons _output_-o158177_ __tmp158469))))
                         (declare (not safe))
                         (cons _output-o158173_ __tmp158468))))
                  (declare (not safe))
                  (cons _bin-o158165_ __tmp158467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158466
                                                           _deps-o158155_))))
                                            (declare (not safe))
                                            (cons _output-bin158167_
                                                  __tmp158465))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158464))))
                              (declare (not safe))
                              (gxc#invoke __tmp158475 __tmp158463))
                            (for-each
                             delete-file
                             (let ((__tmp158476
                                    (let ((__tmp158477
                                           (let ((__tmp158478
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o158177_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o158173_
                                                   __tmp158478))))
                                      (declare (not safe))
                                      (cons _output_-c158175_ __tmp158477))))
                               (declare (not safe))
                               (cons _output-c158171_ __tmp158476)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp158127_)))
                          '#!void)))))
          (let* ((_output-bin158111_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158101_ _opts158102_)))
                 (_output-scm158113_
                  (string-append _output-bin158111_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158109_ _output-scm158113_ _output-bin158111_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158113_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157926_ _opts157927_)
        (letrec ((_reset-declare157929_
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
                 (_generate-stub157930_
                  (lambda (_deps158092_)
                    (let ((_mod-main158094_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157926_ 'main)))
                          (_reset-decl158095_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157929_)))
                          (_user-decl158096_
                           (let ()
                             (declare (not safe))
                             (_user-declare157931_))))
                      (for-each
                       (lambda (_dep158098_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl158095_)
                         (newline)
                         (if _user-decl158096_
                             (begin (write _user-decl158096_) (newline))
                             '#!void)
                         (write (let ((__tmp158479
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep158098_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp158479)))
                         (newline))
                       _deps158092_)
                      (write (let ((__tmp158480
                                    (let ((__tmp158493
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158481
                                           (let ((__tmp158489
                                                  (let ((__tmp158490
                                                         (let ((__tmp158491
                                                                (let ((__tmp158492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158492))))
                   (declare (not safe))
                   (cons __tmp158491 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp158490)))
                                                 (__tmp158482
                                                  (let ((__tmp158483
                                                         (let ((__tmp158484
                                                                (let ((__tmp158485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158486
                                      (let ((__tmp158487
                                             (let ((__tmp158488
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp158488 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp158487))))
                                 (declare (not safe))
                                 (cons __tmp158486 '()))))
                          (declare (not safe))
                          (cons _mod-main158094_ __tmp158485))))
                   (declare (not safe))
                   (cons 'apply __tmp158484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158483 '()))))
                                             (declare (not safe))
                                             (cons __tmp158489 __tmp158482))))
                                      (declare (not safe))
                                      (cons __tmp158493 __tmp158481))))
                               (declare (not safe))
                               (cons 'define __tmp158480)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157931_
                  (lambda ()
                    (let* ((_gsc-opts157997_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157927_)))
                           (_gsc-prelude157999_
                            (if _gsc-opts157997_
                                (member '"-prelude" _gsc-opts157997_)
                                '#f))
                           (_gsc-prelude158001_
                            (if _gsc-prelude157999_
                                (read (open-input-string
                                       (cadr _gsc-prelude157999_)))
                                '#f)))
                      (let _lp158004_ ((_rest158006_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude158001_ '())))
                                       (_user-decls158007_ '()))
                        (let* ((_rest158008158016_ _rest158006_)
                               (_else158010158024_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls158007_))
                                      '#f
                                      (let ((__tmp158494
                                             (reverse _user-decls158007_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp158494)))))
                               (_K158012158080_
                                (lambda (_rest158027_ _expr158028_)
                                  (let* ((_expr158029158041_ _expr158028_)
                                         (_else158032158049_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp158004_
                                               _rest158027_
                                               _user-decls158007_)))))
                                    (let ((_K158037158070_
                                           (lambda (_decls158068_)
                                             (let ((__tmp158495
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls158007_
                                                              _decls158068_))))
                                               (declare (not safe))
                                               (_lp158004_
                                                _rest158027_
                                                __tmp158495))))
                                          (_K158034158055_
                                           (lambda (_exprs158053_)
                                             (let ((__tmp158496
                                                    (append _exprs158053_
                                                            _rest158027_)))
                                               (declare (not safe))
                                               (_lp158004_
                                                __tmp158496
                                                _user-decls158007_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr158029158041_))
                                          (let ((_tl158039158075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr158029158041_)))
                                                (_hd158038158073_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr158029158041_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd158038158073_
                                                         'declare))
                                                (let ((_decls158078_
                                                       _tl158039158075_))
                                                  (declare (not safe))
                                                  (_K158037158070_
                                                   _decls158078_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd158038158073_
                                                             'begin))
                                                    (let ((_exprs158063_
                                                           _tl158039158075_))
                                                      (declare (not safe))
                                                      (_K158034158055_
                                                       _exprs158063_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else158032158049_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else158032158049_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest158008158016_))
                              (let ((_hd158013158083_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest158008158016_)))
                                    (_tl158014158085_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest158008158016_))))
                                (let* ((_expr158088_ _hd158013158083_)
                                       (_rest158090_ _tl158014158085_))
                                  (declare (not safe))
                                  (_K158012158080_ _rest158090_ _expr158088_)))
                              (let ()
                                (declare (not safe))
                                (_else158010158024_))))))))
                 (_compile-stub157932_
                  (lambda (_output-scm157939_ _output-bin157940_)
                    (let* ((_gerbil-home157942_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157944_
                            (path-expand '"lib" _gerbil-home157942_))
                           (_runtime157946_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157948_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157942_))
                           (_include-gambit-sharp157950_
                            (string-append
                             '"(include \""
                             _gambit-sharp157948_
                             '"\")"))
                           (_bin-scm157952_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157926_)))
                           (_deps157954_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157926_)))
                           (_deps157956_
                            (map gxc#find-static-module-file _deps157954_))
                           (_deps157961_
                            (let ((__tmp158497
                                   (lambda (_$obj157958_)
                                     (let ((__tmp158498
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157958_))))
                                       (declare (not safe))
                                       (not __tmp158498)))))
                              (declare (not safe))
                              (filter __tmp158497 _deps157956_)))
                           (_deps157965_
                            (let ((__tmp158499
                                   (lambda (_f157963_)
                                     (let ((__tmp158500
                                            (member _f157963_
                                                    _runtime157946_)))
                                       (declare (not safe))
                                       (not __tmp158500)))))
                              (declare (not safe))
                              (filter __tmp158499 _deps157961_)))
                           (_output-base157967_
                            (string-append
                             (path-strip-extension _output-scm157939_)))
                           (_output-c157969_
                            (string-append _output-base157967_ '".c"))
                           (_output-o157971_
                            (string-append _output-base157967_ '".o"))
                           (_output-c_157973_
                            (string-append _output-base157967_ '"_.c"))
                           (_output-o_157975_
                            (string-append _output-base157967_ '"_.o"))
                           (_gsc-link-opts157977_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157979_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157981_
                            (let ((__tmp158501
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157944_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp158501)))
                           (_output-ld-opts157983_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157985_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp158503
                                       (let ((__tmp158504
                                              (let ((__tmp158505
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157950_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp158505))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp158504))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158503))
                                (let ((__tmp158502
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157950_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158502))))
                           (_gsc-link-opts157987_
                            (append _gsc-link-opts157977_
                                    _gsc-gx-macros157985_))
                           (_rpath157989_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157944_)))
                           (_default-ld-options157991_
                            (let ((__tmp158506
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp158506))))
                      (let ((__tmp158507
                             (lambda ()
                               (let ((__tmp158508
                                      (path-directory _output-bin157940_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158508)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158507))
                      (let ((__tmp158509
                             (lambda ()
                               (let ((__tmp158510
                                      (let ((__tmp158511
                                             (let ((__tmp158512
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157952_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp158512
                                                       _deps157965_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp158511
                                                _runtime157946_))))
                                 (declare (not safe))
                                 (_generate-stub157930_ __tmp158510)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157939_
                         __tmp158509))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158518
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158513
                                   (let ((__tmp158514
                                          (let ((__tmp158515
                                                 (let ((__tmp158516
                                                        (let ((__tmp158517
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157939_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp158517 _gsc-link-opts157987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157973_
                                                         __tmp158516))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp158515))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158514))))
                              (declare (not safe))
                              (gxc#invoke __tmp158518 __tmp158513))
                            (let ((__tmp158524
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158519
                                   (let ((__tmp158520
                                          (let ((__tmp158521
                                                 (let ((__tmp158522
                                                        (let ((__tmp158523
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157973_ '()))))
                  (declare (not safe))
                  (cons _output-c157969_ __tmp158523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158522
                                                           _gsc-static-opts157981_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158521
                                                    _gsc-cc-opts157979_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158520))))
                              (declare (not safe))
                              (gxc#invoke __tmp158524 __tmp158519))
                            (let ((__tmp158534
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158525
                                   (let ((__tmp158526
                                          (let ((__tmp158527
                                                 (let ((__tmp158528
                                                        (let ((__tmp158529
                                                               (let ((__tmp158530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158531
                                     (let ((__tmp158532
                                            (let ((__tmp158533
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157991_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157944_
                                                    __tmp158533))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp158532))))
                                (declare (not safe))
                                (cons _rpath157989_ __tmp158531))))
                         (declare (not safe))
                         (foldr1 cons __tmp158530 _output-ld-opts157983_))))
                  (declare (not safe))
                  (cons _output-o_157975_ __tmp158529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157971_
                                                         __tmp158528))))
                                            (declare (not safe))
                                            (cons _output-bin157940_
                                                  __tmp158527))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158526))))
                              (declare (not safe))
                              (gxc#invoke __tmp158534 __tmp158525)))
                          '#!void)))))
          (let* ((_output-bin157934_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157926_ _opts157927_)))
                 (_output-scm157936_
                  (string-append _output-bin157934_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157932_ _output-scm157936_ _output-bin157934_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157936_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157876_ _id157877_)
        (let ((_$e157923_
               (let ((__tmp158536
                      (lambda (_e157878157880_)
                        (let* ((_g157882157892_ _e157878157880_)
                               (_else157884157900_ (lambda () '#f))
                               (_K157886157904_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157882157892_
                                 'gx#module-export::t))
                              (let* ((_e157887157907_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157882157892_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157888157910_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157882157892_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157889157913_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157882157892_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157889157913_ '0))
                                    (let ((_e157890157916_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157882157892_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g157918157920_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g157918157920_
                                                    _id157877_)))
                                           _e157890157916_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157886157904_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157884157900_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157884157900_))))
                              (let ()
                                (declare (not safe))
                                (_else157884157900_))))))
                     (__tmp158535
                      (##structure-ref
                       _ctx157876_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp158536 __tmp158535))))
          (if _$e157923_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e157923_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157868_ _id157869_)
        (let ((_$e157871_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157868_ _id157869_))))
          (if _$e157871_
              ((lambda (_bind157874_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157874_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157869_)))
                 (##structure-ref _bind157874_ '1 gx#binding::t '#f))
               _$e157871_)
              (let ((__tmp158537
                     (##structure-ref
                      _ctx157868_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp158537
                 _id157869_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157755_)
        (letrec* ((_ht157757_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157758_
                   (lambda (_in157820_ _phi157821_)
                     (let ((_iphi157823_
                            (fx+ _phi157821_
                                 (##direct-structure-ref
                                  _in157820_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157824_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157820_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157826_ ((_rest157828_ _imports157824_)
                                        (_r157829_ '()))
                         (let* ((_rest157830157838_ _rest157828_)
                                (_else157832157846_ (lambda () _r157829_))
                                (_K157834157856_
                                 (lambda (_rest157849_ _in157850_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157850_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157823_))
                                           (let ((__tmp158544
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157850_
                                                          _r157829_))))
                                             (declare (not safe))
                                             (_lp157826_
                                              _rest157849_
                                              __tmp158544))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157826_
                                              _rest157849_
                                              _r157829_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157850_
                                              'gx#module-import::t))
                                           (let ((_iphi157852_
                                                  (fx+ _phi157821_
                                                       (##direct-structure-ref
                                                        _in157850_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157852_))
                                                 (let ((__tmp158542
                                                        (let ((__tmp158543
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157850_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp158543 _r157829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157826_
                                                    _rest157849_
                                                    __tmp158542))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157826_
                                                    _rest157849_
                                                    _r157829_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157850_
                                                  'gx#import-set::t))
                                               (let ((_xphi157854_
                                                      (fx+ _iphi157823_
                                                           (##direct-structure-ref
                                                            _in157850_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157854_))
                                                     (let ((__tmp158540
                                                            (let ((__tmp158541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157850_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp158541 _r157829_))))
               (declare (not safe))
               (_lp157826_ _rest157849_ __tmp158540))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157854_)
                                                         (let ((__tmp158538
                                                                (let ((__tmp158539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157758_
                                  _in157850_
                                  _iphi157823_))))
                          (declare (not safe))
                          (foldl1 cons _r157829_ __tmp158539))))
                   (declare (not safe))
                   (_lp157826_ _rest157849_ __tmp158538))
                 (let ()
                   (declare (not safe))
                   (_lp157826_ _rest157849_ _r157829_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157826_
                                                  _rest157849_
                                                  _r157829_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157830157838_))
                               (let ((_hd157835157859_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157830157838_)))
                                     (_tl157836157861_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157830157838_))))
                                 (let* ((_in157864_ _hd157835157859_)
                                        (_rest157866_ _tl157836157861_))
                                   (declare (not safe))
                                   (_K157834157856_ _rest157866_ _in157864_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157832157846_))))))))
                  (_find-deps157759_
                   (lambda (_rest157766_ _deps157767_)
                     (let* ((_rest157768157776_ _rest157766_)
                            (_else157770157784_ (lambda () _deps157767_))
                            (_K157772157808_
                             (lambda (_rest157787_ _hd157788_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157788_
                                      'gx#module-context::t))
                                   (let ((_id157790_
                                          (##structure-ref
                                           _hd157788_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157791_
                                          (##structure-ref
                                           _hd157788_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157757_ _id157790_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157759_
                                            _rest157787_
                                            _deps157767_))
                                         (let ((_$e157793_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157788_))))
                                           (if _$e157793_
                                               ((lambda (_pre157796_)
                                                  (let ((_xdeps157798_
                                                         (let ((__tmp158557
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157796_ _imports157791_))))
                   (declare (not safe))
                   (_find-deps157759_ __tmp158557 _deps157767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157757_
                                                       _id157790_
                                                       _hd157788_))
                                                    (let ((__tmp158558
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157798_))))
              (declare (not safe))
              (_find-deps157759_ _rest157787_ __tmp158558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157793_)
                                               (let ((_xdeps157800_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157759_
                                                         _imports157791_
                                                         _deps157767_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157757_
                                                    _id157790_
                                                    _hd157788_))
                                                 (let ((__tmp158556
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157788_
                                                                _xdeps157800_))))
                                                   (declare (not safe))
                                                   (_find-deps157759_
                                                    _rest157787_
                                                    __tmp158556)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157788_
                                          'gx#prelude-context::t))
                                       (let ((_id157802_
                                              (##structure-ref
                                               _hd157788_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157757_
                                                _id157802_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157759_
                                                _rest157787_
                                                _deps157767_))
                                             (let ((_xdeps157804_
                                                    (let ((__tmp158554
                                                           (##structure-ref
                                                            _hd157788_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157759_
                                                       __tmp158554
                                                       _deps157767_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157757_
                                                      _id157802_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157759_
                                                      _rest157787_
                                                      _xdeps157804_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157757_
                                                        _id157802_
                                                        _hd157788_))
                                                     (let ((__tmp158555
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157804_))))
               (declare (not safe))
               (_find-deps157759_ _rest157787_ __tmp158555)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157788_
                                              'gx#module-import::t))
                                           (if (let ((__tmp158553
                                                      (##direct-structure-ref
                                                       _hd157788_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp158553))
                                               (let ((__tmp158551
                                                      (let ((__tmp158552
                                                             (##direct-structure-ref
                                                              _hd157788_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158552
                                                              _rest157787_))))
                                                 (declare (not safe))
                                                 (_find-deps157759_
                                                  __tmp158551
                                                  _deps157767_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157759_
                                                  _rest157787_
                                                  _deps157767_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157788_
                                                  'gx#module-export::t))
                                               (let ((__tmp158549
                                                      (let ((__tmp158550
                                                             (##direct-structure-ref
                                                              _hd157788_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158550
                                                              _rest157787_))))
                                                 (declare (not safe))
                                                 (_find-deps157759_
                                                  __tmp158549
                                                  _deps157767_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157788_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp158548
                                                              (##direct-structure-ref
                                                               _hd157788_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp158548))
                                                       (let ((__tmp158546
                                                              (let ((__tmp158547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157788_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp158547 _rest157787_))))
                 (declare (not safe))
                 (_find-deps157759_ __tmp158546 _deps157767_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157788_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157806_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157758_ _hd157788_ '0)))
                          (__tmp158545
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157787_ _xdeps157806_))))
                     (declare (not safe))
                     (_find-deps157759_ __tmp158545 _deps157767_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157759_ _rest157787_ _deps157767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157788_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157768157776_))
                           (let ((_hd157773157811_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157768157776_)))
                                 (_tl157774157813_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157768157776_))))
                             (let* ((_hd157816_ _hd157773157811_)
                                    (_rest157818_ _tl157774157813_))
                               (declare (not safe))
                               (_K157772157808_ _rest157818_ _hd157816_)))
                           (let ()
                             (declare (not safe))
                             (_else157770157784_)))))))
          (reverse (let ((__tmp158559
                          (let ((__tmp158560
                                 (let ((_$e157761_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx157755_))))
                                   (if _$e157761_
                                       ((lambda (_pre157764_)
                                          (let ((__tmp158561
                                                 (##structure-ref
                                                  _ctx157755_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre157764_ __tmp158561)))
                                        _$e157761_)
                                       (##structure-ref
                                        _ctx157755_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps157759_ __tmp158560 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp158559))))))
    (define gxc#find-static-module-file
      (lambda (_ctx157686_)
        (let* ((_context-id157688_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx157686_
                       'gx#module-context::t))
                    (##structure-ref _ctx157686_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx157686_)))
               (_scm157690_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id157688_))
                 '".scm"))
               (_dirs157692_ (gx#current-expander-module-library-path))
               (_dirs157698_
                (let ((_user-libpath157694_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath157694_
                      (let ((_user-libpath157696_
                             (path-expand '"lib" _user-libpath157694_)))
                        (if (member _user-libpath157696_ _dirs157692_)
                            _dirs157692_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath157696_ _dirs157692_))))
                      _dirs157692_)))
               (_dirs157707_
                (let ((_$e157700_ (gxc#current-compile-output-dir)))
                  (if _$e157700_
                      ((lambda (_g157702157704_)
                         (let ()
                           (declare (not safe))
                           (cons _g157702157704_ _dirs157698_)))
                       _$e157700_)
                      _dirs157698_)))
               (_dirs157713_
                (map (lambda (_g157708157710_)
                       (path-expand '"static" _g157708157710_))
                     _dirs157707_)))
          (let _lp157716_ ((_rest157718_ _dirs157713_))
            (let* ((_rest157719157727_ _rest157718_)
                   (_else157721157735_
                    (lambda ()
                      (let ((__tmp158562
                             (##structure-ref
                              _ctx157686_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp158562
                         _scm157690_))))
                   (_K157723157743_
                    (lambda (_rest157738_ _dir157739_)
                      (let ((_path157741_
                             (path-expand _scm157690_ _dir157739_)))
                        (if (file-exists? _path157741_)
                            _path157741_
                            (let ()
                              (declare (not safe))
                              (_lp157716_ _rest157738_)))))))
              (if (let () (declare (not safe)) (##pair? _rest157719157727_))
                  (let ((_hd157724157746_
                         (let ()
                           (declare (not safe))
                           (##car _rest157719157727_)))
                        (_tl157725157748_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157719157727_))))
                    (let* ((_dir157751_ _hd157724157746_)
                           (_rest157753_ _tl157725157748_))
                      (declare (not safe))
                      (_K157723157743_ _rest157753_ _dir157751_)))
                  (let () (declare (not safe)) (_else157721157735_))))))))
    (define gxc#file-empty?
      (lambda (_path157684_)
        (let ((__tmp158563 (file-info-size (file-info _path157684_ '#t))))
          (declare (not safe))
          (zero? __tmp158563))))
    (define gxc#compile-top-module
      (lambda (_ctx157673_)
        (let ((__tmp158567
               (lambda ()
                 (let ((__tmp158568
                        (##structure-ref
                         _ctx157673_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp158568))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp158569
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx157673_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp158569))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx157673_))
                 (if (let ((__tmp158572
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx157673_))))
                       (declare (not safe))
                       (null? __tmp158572))
                     (let* ((_thr1157678_
                             (let ((__tmp158570
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx157673_)))))
                               (declare (not safe))
                               (spawn __tmp158570)))
                            (_thr2157681_
                             (let ((__tmp158571
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx157673_)))))
                               (declare (not safe))
                               (spawn __tmp158571))))
                       (let () (declare (not safe)) (gxc#join! _thr1157678_))
                       (let () (declare (not safe)) (gxc#join! _thr2157681_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx157673_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx157673_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx157673_))
                     '#!void)))
              (__tmp158566
               (let ((__obj158371
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj158371)
                 __obj158371))
              (__tmp158565 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158564 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp158567
           gx#current-expander-context
           _ctx157673_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp158566
           gxc#current-compile-runtime-sections
           __tmp158565
           gxc#current-compile-runtime-names
           __tmp158564))))
    (define gxc#collect-bindings
      (lambda (_ctx157671_)
        (let ((__tmp158573
               (##structure-ref _ctx157671_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp158573))))
    (define gxc#compile-runtime-code
      (lambda (_ctx157617_)
        (letrec ((_compile1157619_
                  (lambda (_ctx157660_)
                    (let* ((_code157662_
                            (##structure-ref
                             _ctx157660_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt157666_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code157662_))
                                (let ((_idstr157664_
                                       (let ((__tmp158574
                                              (##structure-ref
                                               _ctx157660_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp158574))))
                                  (string-append _idstr157664_ '"__0"))
                                '#f)))
                      (if _rt157666_
                          (begin
                            (let ((__tmp158575
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp158575 _ctx157660_ _rt157666_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code157621_
                               _ctx157660_
                               _code157662_)))
                          (let ((_path157669_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx157660_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path157669_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code157622_
                         _ctx157660_
                         _code157662_
                         _rt157666_)))))
                 (_context-timestamp157620_
                  (lambda (_ctx157658_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx157658_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code157621_
                  (lambda (_ctx157640_ _code157641_)
                    (let* ((_lifts157643_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code157646_
                            (let ((__tmp158578
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code157641_))))
                                  (__tmp158577
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp158576
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158578
                               gx#current-expander-context
                               _ctx157640_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts157643_
                               gxc#current-compile-marks
                               __tmp158577
                               gxc#current-compile-identifiers
                               __tmp158576)))
                           (_runtime-code157648_
                            (if (let ((__tmp158582 (unbox _lifts157643_)))
                                  (declare (not safe))
                                  (null? __tmp158582))
                                _runtime-code157646_
                                (let ((__tmp158579
                                       (let ((__tmp158581
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code157646_
                                                      '())))
                                             (__tmp158580
                                              (reverse (unbox _lifts157643_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp158581
                                                 __tmp158580))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158579))))
                           (_runtime-code157650_
                            (let ((__tmp158583
                                   (let ((__tmp158585
                                          (let ((__tmp158586
                                                 (let ((__tmp158589
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp157620_
                                                           _ctx157640_)))
                                                       (__tmp158587
                                                        (let ((__tmp158588
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp158588
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp158589
                                                         __tmp158587))))
                                            (declare (not safe))
                                            (cons 'define __tmp158586)))
                                         (__tmp158584
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code157648_ '()))))
                                     (declare (not safe))
                                     (cons __tmp158585 __tmp158584))))
                              (declare (not safe))
                              (cons 'begin __tmp158583)))
                           (_scm0157652_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157640_
                               '0
                               '".scm"))))
                      (let ((_scms157655_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx157640_))))
                        (let ((__tmp158590
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0157652_
                                    _runtime-code157650_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp158590
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms157655_)
                            (delete-file _scms157655_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0157652_
                           '" => "
                           _scms157655_))
                        (copy-file _scm0157652_ _scms157655_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0157652_))))))
                 (_generate-loader-code157622_
                  (lambda (_ctx157629_ _code157630_ _rt157631_)
                    (let* ((_loader-code157634_
                            (let ((__tmp158591
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code157630_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158591
                               gx#current-expander-context
                               _ctx157629_)))
                           (_loader-code157636_
                            (if _rt157631_
                                (let ((__tmp158592
                                       (let ((__tmp158593
                                              (let ((__tmp158594
                                                     (let ((__tmp158595
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt157631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp158595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158594 '()))))
                                         (declare (not safe))
                                         (cons _loader-code157634_
                                               __tmp158593))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158592))
                                _loader-code157634_)))
                      (let ((__tmp158596
                             (lambda ()
                               (let ((__tmp158597
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157629_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp158597
                                  _loader-code157636_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp158596
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules157624_
                 (let ((__tmp158598
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx157617_))))
                   (declare (not safe))
                   (cons _ctx157617_ __tmp158598))))
            (for-each
             (lambda (_ctx157626_)
               (let ((__tmp158599
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1157619_ _ctx157626_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp158599
                  gxc#current-compile-decls
                  '())))
             _all-modules157624_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx157514_)
        (letrec ((_compile-ssi157516_
                  (lambda (_code157587_)
                    (let* ((_path157589_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157514_
                               '#f
                               '".ssi")))
                           (_prelude157600_
                            (let* ((_super157591_
                                    (##structure-ref
                                     _ctx157514_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e157593_
                                    (##structure-ref
                                     _super157591_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e157593_
                                  ((lambda (_g157595157597_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g157595157597_)))
                                   _$e157593_)
                                  ':<root>)))
                           (_ns157602_
                            (##structure-ref
                             _ctx157514_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr157604_
                            (symbol->string
                             (##structure-ref
                              _ctx157514_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg157611_
                            (let ((_$e157606_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr157604_ '#\/))))
                              (if _$e157606_
                                  ((lambda (_x157609_)
                                     (string->symbol
                                      (substring _idstr157604_ '0 _x157609_)))
                                   _$e157606_)
                                  '#f)))
                           (_rt157613_
                            (let ((__tmp158600
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp158600 _ctx157514_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path157589_))
                      (let ((__tmp158601
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude157600_))
                               (if _pkg157611_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg157611_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns157602_))
                               (newline)
                               (pretty-print _code157587_)
                               (if _rt157613_
                                   (pretty-print
                                    (let ((__tmp158602
                                           (let ((__tmp158606
                                                  (let ((__tmp158607
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp158607)))
                                                 (__tmp158603
                                                  (let ((__tmp158604
                                                         (let ((__tmp158605
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt157613_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp158605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158604 '()))))
                                             (declare (not safe))
                                             (cons __tmp158606 __tmp158603))))
                                      (declare (not safe))
                                      (cons '%#call __tmp158602)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path157589_
                         __tmp158601)))))
                 (_compile-phi157517_
                  (lambda (_part157527_)
                    (let* ((_part157528157541_ _part157527_)
                           (_E157530157545_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part157528157541_))))
                           (_K157531157556_
                            (lambda (_code157548_
                                     _n157549_
                                     _phi157550_
                                     _phi-ctx157551_)
                              (let* ((_code157554_
                                      (let ((__tmp158608
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code157548_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp158608
                                         gx#current-expander-context
                                         _phi-ctx157551_
                                         gx#current-expander-phi
                                         _phi157550_)))
                                     (__tmp158609
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157514_
                                         _n157549_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp158609
                                 _code157554_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part157528157541_))
                          (let ((_hd157532157559_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part157528157541_)))
                                (_tl157533157561_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part157528157541_))))
                            (let ((_phi-ctx157564_ _hd157532157559_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl157533157561_))
                                  (let ((_hd157534157566_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl157533157561_)))
                                        (_tl157535157568_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl157533157561_))))
                                    (let ((_phi157571_ _hd157534157566_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl157535157568_))
                                          (let ((_hd157536157573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl157535157568_)))
                                                (_tl157537157575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl157535157568_))))
                                            (let ((_n157578_ _hd157536157573_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl157537157575_))
                                                  (let ((_hd157538157580_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl157537157575_)))
                                                        (_tl157539157582_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl157537157575_))))
                                                    (let ((_code157585_
                                                           _hd157538157580_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl157539157582_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K157531157556_
                                                             _code157585_
                                                             _n157578_
                                                             _phi157571_
                                                             _phi-ctx157564_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E157530157545_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E157530157545_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E157530157545_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E157530157545_)))))
                          (let () (declare (not safe)) (_E157530157545_)))))))
          (let ((_g158610_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx157514_))))
            (begin
              (let ((_g158611_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g158610_)
                           (##vector-length _g158610_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g158611_ 2)))
                    (error "Context expects 2 values" _g158611_)))
              (let ((_ssi-code157519_
                     (let () (declare (not safe)) (##vector-ref _g158610_ 0)))
                    (_phi-code157520_
                     (let () (declare (not safe)) (##vector-ref _g158610_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi157516_ _ssi-code157519_))
                  (let ((_threads157525_
                         (map (lambda (_code157522_)
                                (let ((__tmp158612
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi157517_
                                            _code157522_)))))
                                  (declare (not safe))
                                  (spawn __tmp158612)))
                              _phi-code157520_)))
                    (for-each gxc#join! _threads157525_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx157497_)
        (let* ((_path157499_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx157497_ '#f '".ssxi.ss")))
               (_code157501_
                (let ((__tmp158613
                       (##structure-ref
                        _ctx157497_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp158613)))
               (_idstr157503_
                (symbol->string
                 (##structure-ref _ctx157497_ '1 gx#expander-context::t '#f)))
               (_pkg157510_
                (let ((_$e157505_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr157503_ '#\/))))
                  (if _$e157505_
                      ((lambda (_x157508_)
                         (string->symbol
                          (substring _idstr157503_ '0 _x157508_)))
                       _$e157505_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path157499_))
          (let ((__tmp158614
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg157510_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg157510_))
                       '#!void)
                   (newline)
                   (pretty-print _code157501_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path157499_ __tmp158614)))))
    (define gxc#generate-meta-code
      (lambda (_ctx157490_)
        (let* ((_state157492_
                (let ((__obj158372
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj158372 _ctx157490_)
                  __obj158372))
               (_ssi-code157494_
                (let ((__tmp158615
                       (##structure-ref
                        _ctx157490_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp158615 _state157492_))))
          (values _ssi-code157494_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state157492_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx157483_)
        (let ((_lifts157485_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158618
                 (lambda ()
                   (let ((_code157488_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx157483_))))
                     (if (let ((__tmp158622 (unbox _lifts157485_)))
                           (declare (not safe))
                           (null? __tmp158622))
                         _code157488_
                         (let ((__tmp158619
                                (let ((__tmp158621
                                       (let ()
                                         (declare (not safe))
                                         (cons _code157488_ '())))
                                      (__tmp158620
                                       (reverse (unbox _lifts157485_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp158621 __tmp158620))))
                           (declare (not safe))
                           (cons 'begin __tmp158619))))))
                (__tmp158617
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp158616
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp158618
             gxc#current-compile-lift
             _lifts157485_
             gxc#current-compile-marks
             __tmp158617
             gxc#current-compile-identifiers
             __tmp158616)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx157479_)
        (let ((_modules157481_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158623
                 (##structure-ref _ctx157479_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp158623 _modules157481_))
          (reverse (unbox _modules157481_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path157462_ _code157463_ _phi?157464_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path157462_))
        (let ((__tmp158624
               (lambda ()
                 (pretty-print
                  (let ((__tmp158625
                         (let ((__tmp158632
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp158626
                                (let ((__tmp158631
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp158627
                                       (let ((__tmp158630
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp158628
                                              (let ((__tmp158629
                                                     (if _phi?157464_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp158629))))
                                         (declare (not safe))
                                         (cons __tmp158630 __tmp158628))))
                                  (declare (not safe))
                                  (cons __tmp158631 __tmp158627))))
                           (declare (not safe))
                           (cons __tmp158632 __tmp158626))))
                    (declare (not safe))
                    (cons 'declare __tmp158625)))
                 (pretty-print _code157463_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path157462_ __tmp158624))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path157462_ _phi?157464_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path157462_))))
    (define gxc#compile-scm-file__0
      (lambda (_path157470_ _code157471_)
        (let ((_phi?157473_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path157470_ _code157471_ _phi?157473_))))
    (define gxc#compile-scm-file
      (lambda _g158634_
        (let ((_g158633_ (let () (declare (not safe)) (##length _g158634_))))
          (cond ((let () (declare (not safe)) (##fx= _g158633_ 2))
                 (apply (lambda (_path157470_ _code157471_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path157470_
                             _code157471_)))
                        _g158634_))
                ((let () (declare (not safe)) (##fx= _g158633_ 3))
                 (apply (lambda (_path157475_ _code157476_ _phi?157477_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path157475_
                             _code157476_
                             _phi?157477_)))
                        _g158634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g158634_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?157363_)
        (let _lp157365_ ((_rest157367_ (gxc#current-compile-gsc-options))
                         (_opts157368_ '()))
          (let* ((_rest157369157389_ _rest157367_)
                 (_else157373157397_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157363_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158635
                               (let ((__tmp158636 (reverse _opts157368_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp158636))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp158635))
                        (reverse _opts157368_)))))
            (let ((_K157383157440_
                   (lambda (_rest157438_)
                     (let ()
                       (declare (not safe))
                       (_lp157365_ _rest157438_ _opts157368_))))
                  (_K157378157422_
                   (lambda (_rest157420_)
                     (let ()
                       (declare (not safe))
                       (_lp157365_ _rest157420_ _opts157368_))))
                  (_K157375157404_
                   (lambda (_rest157401_ _opt157402_)
                     (let ((__tmp158637
                            (let ()
                              (declare (not safe))
                              (cons _opt157402_ _opts157368_))))
                       (declare (not safe))
                       (_lp157365_ _rest157401_ __tmp158637)))))
              (if (let () (declare (not safe)) (##pair? _rest157369157389_))
                  (let ((_tl157385157445_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157369157389_)))
                        (_hd157384157443_
                         (let ()
                           (declare (not safe))
                           (##car _rest157369157389_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157384157443_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157385157445_))
                            (let* ((_tl157387157448_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157385157445_)))
                                   (_rest157451_ _tl157387157448_))
                              (declare (not safe))
                              (_K157383157440_ _rest157451_))
                            (let ((_opt157412_ _hd157384157443_)
                                  (_rest157414_ _tl157385157445_))
                              (let ()
                                (declare (not safe))
                                (_K157375157404_ _rest157414_ _opt157412_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157384157443_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157385157445_))
                                (let* ((_tl157382157430_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157385157445_)))
                                       (_rest157433_ _tl157382157430_))
                                  (declare (not safe))
                                  (_K157378157422_ _rest157433_))
                                (let ((_opt157412_ _hd157384157443_)
                                      (_rest157414_ _tl157385157445_))
                                  (let ()
                                    (declare (not safe))
                                    (_K157375157404_
                                     _rest157414_
                                     _opt157412_))))
                            (let ((_opt157412_ _hd157384157443_)
                                  (_rest157414_ _tl157385157445_))
                              (let ()
                                (declare (not safe))
                                (_K157375157404_ _rest157414_ _opt157412_))))))
                  (let () (declare (not safe)) (_else157373157397_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?157457_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?157457_))))
    (define gxc#gsc-link-options
      (lambda _g158639_
        (let ((_g158638_ (let () (declare (not safe)) (##length _g158639_))))
          (cond ((let () (declare (not safe)) (##fx= _g158638_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g158639_))
                ((let () (declare (not safe)) (##fx= _g158638_ 1))
                 (apply (lambda (_phi?157459_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?157459_)))
                        _g158639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g158639_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?157264_)
        (let _lp157266_ ((_rest157268_ (gxc#current-compile-gsc-options))
                         (_opts157269_ '()))
          (let* ((_rest157270157290_ _rest157268_)
                 (_else157274157298_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157264_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158640
                               (let ((__tmp158641 (reverse _opts157269_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp158641))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp158640))
                        (reverse _opts157269_)))))
            (let ((_K157284157337_
                   (lambda (_rest157334_ _opt157335_)
                     (let ((__tmp158642
                            (let ((__tmp158643
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts157269_))))
                              (declare (not safe))
                              (cons _opt157335_ __tmp158643))))
                       (declare (not safe))
                       (_lp157266_ _rest157334_ __tmp158642))))
                  (_K157279157318_
                   (lambda (_rest157316_)
                     (let ()
                       (declare (not safe))
                       (_lp157266_ _rest157316_ _opts157269_))))
                  (_K157276157304_
                   (lambda (_rest157302_)
                     (let ()
                       (declare (not safe))
                       (_lp157266_ _rest157302_ _opts157269_)))))
              (if (let () (declare (not safe)) (##pair? _rest157270157290_))
                  (let ((_tl157286157342_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157270157290_)))
                        (_hd157285157340_
                         (let ()
                           (declare (not safe))
                           (##car _rest157270157290_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157285157340_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157286157342_))
                            (let ((_tl157288157347_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl157286157342_)))
                                  (_hd157287157345_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl157286157342_))))
                              (let ((_opt157350_ _hd157287157345_)
                                    (_rest157352_ _tl157288157347_))
                                (let ()
                                  (declare (not safe))
                                  (_K157284157337_ _rest157352_ _opt157350_))))
                            (let ((_rest157310_ _tl157286157342_))
                              (declare (not safe))
                              (_K157276157304_ _rest157310_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157285157340_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157286157342_))
                                (let* ((_tl157283157326_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157286157342_)))
                                       (_rest157329_ _tl157283157326_))
                                  (declare (not safe))
                                  (_K157279157318_ _rest157329_))
                                (let ((_rest157310_ _tl157286157342_))
                                  (declare (not safe))
                                  (_K157276157304_ _rest157310_)))
                            (let ((_rest157310_ _tl157286157342_))
                              (declare (not safe))
                              (_K157276157304_ _rest157310_)))))
                  (let () (declare (not safe)) (_else157274157298_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?157358_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?157358_))))
    (define gxc#gsc-cc-options
      (lambda _g158645_
        (let ((_g158644_ (let () (declare (not safe)) (##length _g158645_))))
          (cond ((let () (declare (not safe)) (##fx= _g158644_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g158645_))
                ((let () (declare (not safe)) (##fx= _g158644_ 1))
                 (apply (lambda (_phi?157360_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?157360_)))
                        _g158645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g158645_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir157259_)
        (let* ((_user-staticdir157261_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp158646
                (let ((__tmp158647
                       (string-append
                        '"-I "
                        _staticdir157259_
                        '" -I "
                        _user-staticdir157261_)))
                  (declare (not safe))
                  (cons __tmp158647 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp158646))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp157171_ ((_rest157173_ (gxc#current-compile-gsc-options))
                         (_opts157174_ '()))
          (let* ((_rest157175157195_ _rest157173_)
                 (_else157179157203_ (lambda () _opts157174_)))
            (let ((_K157189157246_
                   (lambda (_rest157244_)
                     (let ()
                       (declare (not safe))
                       (_lp157171_ _rest157244_ _opts157174_))))
                  (_K157184157224_
                   (lambda (_rest157221_ _opt157222_)
                     (let ((__tmp158648
                            (append _opts157174_
                                    (let ((__tmp158649
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt157222_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp158649)))))
                       (declare (not safe))
                       (_lp157171_ _rest157221_ __tmp158648))))
                  (_K157181157209_
                   (lambda (_rest157207_)
                     (let ()
                       (declare (not safe))
                       (_lp157171_ _rest157207_ _opts157174_)))))
              (if (let () (declare (not safe)) (##pair? _rest157175157195_))
                  (let ((_tl157191157251_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157175157195_)))
                        (_hd157190157249_
                         (let ()
                           (declare (not safe))
                           (##car _rest157175157195_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157190157249_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157191157251_))
                            (let* ((_tl157193157254_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157191157251_)))
                                   (_rest157257_ _tl157193157254_))
                              (declare (not safe))
                              (_K157189157246_ _rest157257_))
                            (let ((_rest157215_ _tl157191157251_))
                              (declare (not safe))
                              (_K157181157209_ _rest157215_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157190157249_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157191157251_))
                                (let ((_tl157188157234_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl157191157251_)))
                                      (_hd157187157232_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl157191157251_))))
                                  (let ((_opt157237_ _hd157187157232_)
                                        (_rest157239_ _tl157188157234_))
                                    (let ()
                                      (declare (not safe))
                                      (_K157184157224_
                                       _rest157239_
                                       _opt157237_))))
                                (let ((_rest157215_ _tl157191157251_))
                                  (declare (not safe))
                                  (_K157181157209_ _rest157215_)))
                            (let ((_rest157215_ _tl157191157251_))
                              (declare (not safe))
                              (_K157181157209_ _rest157215_)))))
                  (let () (declare (not safe)) (_else157179157203_))))))))
    (define gxc#not-string-empty?
      (lambda (_str157168_)
        (let ((__tmp158650
               (let () (declare (not safe)) (string-empty? _str157168_))))
          (declare (not safe))
          (not __tmp158650))))
    (define gxc#gsc-compile-file
      (lambda (_path157136_ _phi?157137_)
        (letrec ((_gsc-link-path157139_
                  (lambda (_base-path157160_)
                    (let _lp157162_ ((_n157164_ '1))
                      (let ((_path157166_
                             (string-append
                              _base-path157160_
                              '".o"
                              (number->string _n157164_))))
                        (if (file-exists? _path157166_)
                            (let ((__tmp158651
                                   (let ()
                                     (declare (not safe))
                                     (+ _n157164_ '1))))
                              (declare (not safe))
                              (_lp157162_ __tmp158651))
                            _path157166_))))))
          (let* ((_base-path157141_ (path-strip-extension _path157136_))
                 (_path-c157143_ (string-append _base-path157141_ '".c"))
                 (_path-o157145_ (string-append _base-path157141_ '".o"))
                 (_link-path157147_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path157139_ _base-path157141_)))
                 (_link-path-c157149_ (string-append _link-path157147_ '".c"))
                 (_link-path-o157151_ (string-append _link-path157147_ '".o"))
                 (_gsc-link-opts157153_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?157137_)))
                 (_gsc-cc-opts157155_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?157137_)))
                 (_gcc-ld-opts157157_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp158658 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158652
                   (let ((__tmp158653
                          (let ((__tmp158654
                                 (let ((__tmp158655
                                        (let ((__tmp158656
                                               (let ((__tmp158657
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path157136_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp158657
                                                         _gsc-link-opts157153_))))
                                          (declare (not safe))
                                          (cons _link-path-c157149_
                                                __tmp158656))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp158655))))
                            (declare (not safe))
                            (cons '"-flat" __tmp158654))))
                     (declare (not safe))
                     (cons '"-link" __tmp158653))))
              (declare (not safe))
              (gxc#invoke __tmp158658 __tmp158652 'stdout-redirection: '#t))
            (let ((__tmp158665 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158659
                   (let ((__tmp158660
                          (let ((__tmp158661
                                 (let ((__tmp158662
                                        (let ((__tmp158663
                                               (let ((__tmp158664
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c157149_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c157143_
                                                       __tmp158664))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp158663
                                                  _gsc-cc-opts157155_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp158662))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp158661))))
                     (declare (not safe))
                     (cons '"-obj" __tmp158660))))
              (declare (not safe))
              (gxc#invoke __tmp158665 __tmp158659 'stdout-redirection: '#t))
            (let ((__tmp158671 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp158666
                   (let ((__tmp158667
                          (let ((__tmp158668
                                 (let ((__tmp158669
                                        (let ((__tmp158670
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o157151_
                                                       _gcc-ld-opts157157_))))
                                          (declare (not safe))
                                          (cons _path-o157145_ __tmp158670))))
                                   (declare (not safe))
                                   (cons _link-path157147_ __tmp158669))))
                            (declare (not safe))
                            (cons '"-o" __tmp158668))))
                     (declare (not safe))
                     (cons '"-shared" __tmp158667))))
              (declare (not safe))
              (gxc#invoke __tmp158671 __tmp158666))
            (for-each
             delete-file
             (let ((__tmp158672
                    (let ((__tmp158673
                           (let ((__tmp158674
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o157151_ '()))))
                             (declare (not safe))
                             (cons _link-path-c157149_ __tmp158674))))
                      (declare (not safe))
                      (cons _path-o157145_ __tmp158673))))
               (declare (not safe))
               (cons _path-c157143_ __tmp158672)))))))
    (define gxc#compile-output-file
      (lambda (_ctx157107_ _n157108_ _ext157109_)
        (letrec ((_module-relative-path157111_
                  (lambda (_ctx157134_)
                    (path-strip-directory
                     (let ((__tmp158675
                            (##structure-ref
                             _ctx157134_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp158675)))))
                 (_module-source-directory157112_
                  (lambda (_ctx157130_)
                    (path-directory
                     (let ((_mpath157132_
                            (##structure-ref
                             _ctx157130_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath157132_))
                           _mpath157132_
                           (let ()
                             (declare (not safe))
                             (last _mpath157132_)))))))
                 (_section-string157113_
                  (lambda (_n157128_)
                    (if (let () (declare (not safe)) (number? _n157128_))
                        (number->string _n157128_)
                        (if (let () (declare (not safe)) (symbol? _n157128_))
                            (symbol->string _n157128_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n157128_))
                                _n157128_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n157128_)))))))
                 (_file-name157114_
                  (lambda (_path157126_)
                    (if _n157108_
                        (string-append
                         _path157126_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string157113_ _n157108_))
                         _ext157109_)
                        (string-append _path157126_ _ext157109_))))
                 (_file-path157115_
                  (lambda ()
                    (let ((_$e157121_ (gxc#current-compile-output-dir)))
                      (if _$e157121_
                          ((lambda (_outdir157124_)
                             (path-expand
                              (let ((__tmp158677
                                     (let ((__tmp158678
                                            (##structure-ref
                                             _ctx157107_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp158678))))
                                (declare (not safe))
                                (_file-name157114_ __tmp158677))
                              _outdir157124_))
                           _$e157121_)
                          (path-expand
                           (let ((__tmp158676
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path157111_
                                     _ctx157107_))))
                             (declare (not safe))
                             (_file-name157114_ __tmp158676))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory157112_
                              _ctx157107_))))))))
          (let ((_path157117_
                 (let () (declare (not safe)) (_file-path157115_))))
            (let ((__tmp158679
                   (lambda ()
                     (let ((__tmp158680 (path-directory _path157117_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158680)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158679))
            _path157117_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx157089_)
        (letrec ((_file-name157091_
                  (lambda (_id157105_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id157105_))
                     '".scm")))
                 (_file-path157092_
                  (lambda ()
                    (let* ((_file157098_
                            (let ((__tmp158681
                                   (##structure-ref
                                    _ctx157089_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name157091_ __tmp158681)))
                           (_$e157100_ (gxc#current-compile-output-dir)))
                      (if _$e157100_
                          ((lambda (_outdir157103_)
                             (path-expand
                              _file157098_
                              (path-expand '"static" _outdir157103_)))
                           _$e157100_)
                          (path-expand _file157098_ '"static"))))))
          (let ((_path157094_
                 (let () (declare (not safe)) (_file-path157092_))))
            (let ((__tmp158682
                   (lambda ()
                     (let ((__tmp158683 (path-directory _path157094_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158683)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158682))
            _path157094_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx157083_ _opts157084_)
        (let ((_$e157086_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts157084_))))
          (if _$e157086_
              (values _$e157086_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx157083_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr157076_)
        (if (let () (declare (not safe)) (string? _idstr157076_))
            (let* ((_str157078_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr157076_)))
                   (_strs157080_
                    (let ()
                      (declare (not safe))
                      (string-split _str157078_ '#\/))))
              (let () (declare (not safe)) (string-join _strs157080_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr157076_))
                (let ((__tmp158684 (symbol->string _idstr157076_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp158684))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr157076_))))))
    (define gxc#invoke__%
      (lambda (_g158685_
               _stdout-redirection157037157041_
               _stderr-redirection157038157043_
               _program157045_
               _args157046_)
        (let* ((_stdout-redirection157048_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection157037157041_ absent-value))
                    '#f
                    _stdout-redirection157037157041_))
               (_stderr-redirection157050_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection157038157043_ absent-value))
                    '#f
                    _stderr-redirection157038157043_)))
          (let ((__tmp158686
                 (let ()
                   (declare (not safe))
                   (cons _program157045_ _args157046_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp158686))
          (let* ((_proc157052_
                  (open-process
                   (let ((__tmp158687
                          (let ((__tmp158688
                                 (let ((__tmp158689
                                        (let ((__tmp158690
                                               (let ((__tmp158691
                                                      (let ((__tmp158692
                                                             (let ((__tmp158693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection157050_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp158693))))
                (declare (not safe))
                (cons _stdout-redirection157048_ __tmp158692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp158691))))
                                          (declare (not safe))
                                          (cons _args157046_ __tmp158690))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp158689))))
                            (declare (not safe))
                            (cons _program157045_ __tmp158688))))
                     (declare (not safe))
                     (cons 'path: __tmp158687))))
                 (_output157057_
                  (if (or _stdout-redirection157048_
                          _stderr-redirection157050_)
                      (read-line _proc157052_ '#f)
                      '#f)))
            (let ((_status157060_ (process-status _proc157052_)))
              (close-port _proc157052_)
              (if (let () (declare (not safe)) (zero? _status157060_))
                  '#!void
                  (begin
                    (display _output157057_)
                    (let ((__tmp158694
                           (let ()
                             (declare (not safe))
                             (cons _program157045_ _args157046_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp158694
                       _status157060_)))))))))
    (define gxc#invoke__@
      (lambda (_keys157036157065_ . _args157067_)
        (apply gxc#invoke__%
               _keys157036157065_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157036157065_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157036157065_
                  'stderr-redirection:
                  absent-value))
               _args157067_)))
    (define gxc#invoke
      (lambda _args157039157073_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args157039157073_)))
    (define gxc#join!
      (lambda (_thread157030_)
        (let ((__tmp158696
               (lambda (_exn157032_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn157032_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn157032_)))
                     (raise _exn157032_))))
              (__tmp158695 (lambda () (thread-join! _thread157030_))))
          (declare (not safe))
          (with-catch __tmp158696 __tmp158695))))))
