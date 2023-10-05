(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1696439812)
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
      (lambda (_path71227_ _fun71228_)
        (with-output-to-file
         (let ((__tmp74234
                (let ()
                  (declare (not safe))
                  (cons _path71227_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp74234))
         _fun71228_)))
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
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/system"
        "gerbil/runtime/loader"
        "gerbil/runtime/control"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir71222_) (delete-file-or-directory _dir71222_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath71196_ _opts71197_)
        (if (let () (declare (not safe)) (string? _srcpath71196_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath71196_)))
        (let ((_outdir71199_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts71197_)))
              (_invoke-gsc?71200_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts71197_)))
              (_gsc-options71201_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts71197_)))
              (_keep-scm?71202_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts71197_)))
              (_verbosity71203_
               (let () (declare (not safe)) (pgetq 'verbose: _opts71197_)))
              (_optimize71204_
               (let () (declare (not safe)) (pgetq 'optimize: _opts71197_)))
              (_debug71205_
               (let () (declare (not safe)) (pgetq 'debug: _opts71197_)))
              (_gen-ssxi71206_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts71197_))))
          (if _outdir71199_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir71199_))))
              '#!void)
          (if _optimize71204_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let () (declare (not safe)) (gxc#optimizer-info-init!))))
              '#!void)
          (let ((__tmp74236
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath71196_))
                   (let ((__tmp74237
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath71196_))))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp74237))))
                (__tmp74235
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp74236
             gxc#current-compile-output-dir
             _outdir71199_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?71200_
             gxc#current-compile-gsc-options
             _gsc-options71201_
             gxc#current-compile-keep-scm
             _keep-scm?71202_
             gxc#current-compile-verbose
             _verbosity71203_
             gxc#current-compile-optimize
             _optimize71204_
             gxc#current-compile-debug
             _debug71205_
             gxc#current-compile-generate-ssxi
             _gen-ssxi71206_
             gxc#current-compile-timestamp
             __tmp74235
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath71215_)
        (let ((_opts71217_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath71215_ _opts71217_))))
    (define gxc#compile-module
      (lambda _g74239_
        (let ((_g74238_ (let () (declare (not safe)) (##length _g74239_))))
          (cond ((let () (declare (not safe)) (##fx= _g74238_ 1))
                 (apply (lambda (_srcpath71215_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath71215_)))
                        _g74239_))
                ((let () (declare (not safe)) (##fx= _g74238_ 2))
                 (apply (lambda (_srcpath71219_ _opts71220_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath71219_
                             _opts71220_)))
                        _g74239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g74239_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath71173_ _opts71174_)
        (if (let () (declare (not safe)) (string? _srcpath71173_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath71173_)))
        (let ((_outdir71176_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts71174_)))
              (_invoke-gsc?71177_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts71174_)))
              (_gsc-options71178_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts71174_)))
              (_keep-scm?71179_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts71174_)))
              (_verbosity71180_
               (let () (declare (not safe)) (pgetq 'verbose: _opts71174_))))
          (if _outdir71176_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir71176_))))
              '#!void)
          (let ((__tmp74241
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath71173_))
                   (let ((__tmp74242
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath71173_))))))
                     (declare (not safe))
                     (gxc#compile-executable-module __tmp74242 _opts71174_))))
                (__tmp74240
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp74241
             gxc#current-compile-output-dir
             _outdir71176_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?71177_
             gxc#current-compile-gsc-options
             _gsc-options71178_
             gxc#current-compile-keep-scm
             _keep-scm?71179_
             gxc#current-compile-verbose
             _verbosity71180_
             gxc#current-compile-timestamp
             __tmp74240
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath71188_)
        (let ((_opts71190_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath71188_ _opts71190_))))
    (define gxc#compile-exe
      (lambda _g74244_
        (let ((_g74243_ (let () (declare (not safe)) (##length _g74244_))))
          (cond ((let () (declare (not safe)) (##fx= _g74243_ 1))
                 (apply (lambda (_srcpath71188_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath71188_)))
                        _g74244_))
                ((let () (declare (not safe)) (##fx= _g74243_ 2))
                 (apply (lambda (_srcpath71192_ _opts71193_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath71192_ _opts71193_)))
                        _g74244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g74244_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx71169_ _opts71170_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts71170_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx71169_
               _opts71170_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx71169_
               _opts71170_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx71040_ _opts71041_)
        (letrec ((_generate-stub71043_
                  (lambda (_builtin-modules71165_)
                    (let ((_mod-main71167_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx71040_ 'main))))
                      (write (let ((__tmp74245
                                    (let ((__tmp74246
                                           (let ((__tmp74247
                                                  (let ((__tmp74248
                                                         (let ((__tmp74250
                                                                (let ((__tmp74251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules71165_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp74251)))
                       (__tmp74249
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp74250 __tmp74249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp74248))))
                                             (declare (not safe))
                                             (cons __tmp74247 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp74246))))
                               (declare (not safe))
                               (cons 'define __tmp74245)))
                      (write (let ((__tmp74252
                                    (let ((__tmp74263
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp74253
                                           (let ((__tmp74261
                                                  (let ((__tmp74262
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'builtin-modules
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp74262)))
                                                 (__tmp74254
                                                  (let ((__tmp74255
                                                         (let ((__tmp74256
                                                                (let ((__tmp74257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74258
                                      (let ((__tmp74259
                                             (let ((__tmp74260
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp74260 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp74259))))
                                 (declare (not safe))
                                 (cons __tmp74258 '()))))
                          (declare (not safe))
                          (cons _mod-main71167_ __tmp74257))))
                   (declare (not safe))
                   (cons 'apply __tmp74256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74255 '()))))
                                             (declare (not safe))
                                             (cons __tmp74261 __tmp74254))))
                                      (declare (not safe))
                                      (cons __tmp74263 __tmp74253))))
                               (declare (not safe))
                               (cons 'define __tmp74252)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-gsc-cc-opts71044_
                  (lambda (_gerbil-staticdir71154_)
                    (let* ((_opts71156_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts71041_)))
                           (_base71158_
                            (string-append '"-I " _gerbil-staticdir71154_))
                           (_user-static-dir71160_
                            (path-expand
                             (path-expand '"lib/static" (gerbil-path))))
                           (_base71162_
                            (string-append
                             _base71158_
                             '" -I "
                             _user-static-dir71160_)))
                      (let ((__tmp74264
                             (let ()
                               (declare (not safe))
                               (gxc#gsc-cc-options))))
                        (declare (not safe))
                        (foldr1 cons __tmp74264 _base71162_)))))
                 (_get-libgerbil-ld-opts71045_
                  (lambda (_libgerbil71152_)
                    (call-with-input-file
                     (string-append _libgerbil71152_ '".ldd")
                     read)))
                 (_replace-extension71046_
                  (lambda (_path71149_ _ext71150_)
                    (string-append
                     (path-strip-extension _path71149_)
                     _ext71150_)))
                 (_not-exclude-module?71047_
                  (lambda (_ctx71145_)
                    (let ((_id-str71147_
                           (symbol->string
                            (##structure-ref
                             _ctx71145_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp74266
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"gerbil/" _id-str71147_))))
                            (declare (not safe))
                            (not __tmp74266))
                          (let ((__tmp74265
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str71147_))))
                            (declare (not safe))
                            (not __tmp74265))
                          '#f))))
                 (_not-file-empty?71048_
                  (lambda (_path71143_)
                    (let ((__tmp74267
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path71143_))))
                      (declare (not safe))
                      (not __tmp74267))))
                 (_compile-stub71049_
                  (lambda (_output-scm71056_ _output-bin71057_)
                    (let* ((_gerbil-home71059_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir71061_
                            (path-expand '"lib" _gerbil-home71059_))
                           (_gerbil-staticdir71063_
                            (path-expand '"static" _gerbil-libdir71061_))
                           (_gxlink71065_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir71061_))
                           (_tmp71067_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path71071_
                            (lambda (_f71069_)
                              (path-expand
                               (path-strip-directory _f71069_)
                               _tmp71067_)))
                           (_deps71073_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx71040_)))
                           (_deps71075_
                            (filter _not-exclude-module?71047_ _deps71073_))
                           (_src-deps-scm71077_
                            (map gxc#find-static-module-file _deps71075_))
                           (_src-deps-scm71079_
                            (filter _not-file-empty?71048_
                                    _src-deps-scm71077_))
                           (_src-deps-scm71081_
                            (map path-expand _src-deps-scm71079_))
                           (_deps-scm71083_
                            (map _tmp-path71071_ _src-deps-scm71081_))
                           (_deps-c71089_
                            (map (lambda (_g7108471086_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension71046_
                                      _g7108471086_
                                      '".c")))
                                 _deps-scm71083_))
                           (_deps-o71095_
                            (map (lambda (_g7109071092_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension71046_
                                      _g7109071092_
                                      '".o")))
                                 _deps-scm71083_))
                           (_src-bin-scm71097_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx71040_)))
                           (_src-bin-scm71099_
                            (path-expand _src-bin-scm71097_))
                           (_bin-scm71101_
                            (let ()
                              (declare (not safe))
                              (_tmp-path71071_ _src-bin-scm71099_)))
                           (_bin-c71103_
                            (let ()
                              (declare (not safe))
                              (_replace-extension71046_ _bin-scm71101_ '".c")))
                           (_bin-o71105_
                            (let ()
                              (declare (not safe))
                              (_replace-extension71046_ _bin-scm71101_ '".o")))
                           (_output-bin71107_ (path-expand _output-bin71057_))
                           (_output-scm71109_ (path-expand _output-scm71056_))
                           (_output-c71111_
                            (let ()
                              (declare (not safe))
                              (_replace-extension71046_
                               _output-scm71109_
                               '".c")))
                           (_output-o71113_
                            (let ()
                              (declare (not safe))
                              (_replace-extension71046_
                               _output-scm71109_
                               '".o")))
                           (_output_71115_
                            (string-append
                             (path-strip-extension _output-scm71109_)
                             '"_"))
                           (_output_-c71117_
                            (string-append _output_71115_ '".c"))
                           (_output_-o71119_
                            (string-append _output_71115_ '".o"))
                           (_gsc-link-opts71121_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options '#f)))
                           (_gsc-cc-opts71123_
                            (let ()
                              (declare (not safe))
                              (_get-gsc-cc-opts71044_
                               _gerbil-staticdir71063_)))
                           (_output-ld-opts71125_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a71127_
                            (path-expand '"libgerbil.a" _gerbil-libdir71061_))
                           (_libgerbil.so71129_
                            (path-expand '"libgerbil.so" _gerbil-libdir71061_))
                           (_libgerbil-ld-opts71131_
                            (if (file-exists? _libgerbil.so71129_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts71045_
                                   _libgerbil.so71129_))
                                (if (file-exists? _libgerbil.a71127_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts71045_
                                       _libgerbil.a71127_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a71127_
                                       _libgerbil.so71129_)))))
                           (_gerbil-rpath71133_
                            (string-append
                             '"-Wl,-rpath="
                             _gerbil-libdir71061_))
                           (_builtin-modules71137_
                            (map (lambda (_mod71135_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod71135_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx71040_ _deps71075_)))))
                      (with-lock
                       gxc#+driver-mutex+
                       (lambda ()
                         (let ((__tmp74268 (path-directory _output-bin71107_)))
                           (declare (not safe))
                           (create-directory* __tmp74268))))
                      (let ((__tmp74269
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub71043_
                                  _builtin-modules71137_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm71109_
                         __tmp74269))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (with-lock
                             gxc#+driver-mutex+
                             (lambda () (create-directory _tmp71067_)))
                            (for-each
                             copy-file
                             _src-deps-scm71081_
                             _deps-scm71083_)
                            (copy-file _src-bin-scm71099_ _bin-scm71101_)
                            (let ((__tmp74277
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74270
                                   (let ((__tmp74271
                                          (let ((__tmp74272
                                                 (let ((__tmp74273
                                                        (let ((__tmp74274
                                                               (let ((__tmp74275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74276
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm71109_ '()))))
                                (declare (not safe))
                                (cons _bin-scm71101_ __tmp74276))))
                         (declare (not safe))
                         (foldr1 cons __tmp74275 _deps-scm71083_))))
                  (declare (not safe))
                  (foldr1 cons __tmp74274 _gsc-link-opts71121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink71065_
                                                         __tmp74273))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp74272))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp74271))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74277
                               __tmp74270))
                            (let ((__tmp74284
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74278
                                   (let ((__tmp74279
                                          (let ((__tmp74280
                                                 (let ((__tmp74281
                                                        (let ((__tmp74282
                                                               (let ((__tmp74283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _output_-c71117_ '()))))
                         (declare (not safe))
                         (cons _output-c71111_ __tmp74283))))
                  (declare (not safe))
                  (cons _bin-c71103_ __tmp74282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp74281
                                                           _deps-c71089_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp74280
                                                    _gsc-cc-opts71123_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp74279))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74284
                               __tmp74278))
                            (let ((__tmp74297
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp74285
                                   (let ((__tmp74286
                                          (let ((__tmp74287
                                                 (let ((__tmp74288
                                                        (let ((__tmp74289
                                                               (let ((__tmp74290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74291
                                     (let ((__tmp74292
                                            (let ((__tmp74293
                                                   (let ((__tmp74294
                                                          (let ((__tmp74295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp74296
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts71131_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp74296))))
                    (declare (not safe))
                    (cons _gerbil-libdir71061_ __tmp74295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L" __tmp74294))))
                                              (declare (not safe))
                                              (cons _gerbil-rpath71133_
                                                    __tmp74293))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp74292
                                               _output-ld-opts71125_))))
                                (declare (not safe))
                                (cons _output_-o71119_ __tmp74291))))
                         (declare (not safe))
                         (cons _output-o71113_ __tmp74290))))
                  (declare (not safe))
                  (cons _bin-o71105_ __tmp74289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp74288
                                                           _deps-o71095_))))
                                            (declare (not safe))
                                            (cons _output-bin71107_
                                                  __tmp74287))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp74286))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74297
                               __tmp74285))
                            (for-each
                             delete-file
                             (let ((__tmp74298
                                    (let ((__tmp74299
                                           (let ((__tmp74300
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o71119_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o71113_
                                                   __tmp74300))))
                                      (declare (not safe))
                                      (cons _output_-c71117_ __tmp74299))))
                               (declare (not safe))
                               (cons _output-c71111_ __tmp74298)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp71067_)))
                          '#!void)))))
          (let* ((_output-bin71051_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx71040_ _opts71041_)))
                 (_output-scm71053_
                  (string-append _output-bin71051_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub71049_ _output-scm71053_ _output-bin71051_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm71053_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx70859_ _opts70860_)
        (letrec ((_reset-declare70862_
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
                 (_generate-stub70863_
                  (lambda (_deps71031_)
                    (let ((_mod-main71033_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx70859_ 'main)))
                          (_reset-decl71034_
                           (let ()
                             (declare (not safe))
                             (_reset-declare70862_)))
                          (_user-decl71035_
                           (let ()
                             (declare (not safe))
                             (_user-declare70865_))))
                      (for-each
                       (lambda (_dep71037_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl71034_)
                         (newline)
                         (if _user-decl71035_
                             (begin (write _user-decl71035_) (newline))
                             '#!void)
                         (write (let ((__tmp74301
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep71037_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp74301)))
                         (newline))
                       _deps71031_)
                      (write (let ((__tmp74302
                                    (let ((__tmp74315
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp74303
                                           (let ((__tmp74311
                                                  (let ((__tmp74312
                                                         (let ((__tmp74313
                                                                (let ((__tmp74314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp74314))))
                   (declare (not safe))
                   (cons __tmp74313 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp74312)))
                                                 (__tmp74304
                                                  (let ((__tmp74305
                                                         (let ((__tmp74306
                                                                (let ((__tmp74307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp74308
                                      (let ((__tmp74309
                                             (let ((__tmp74310
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp74310 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp74309))))
                                 (declare (not safe))
                                 (cons __tmp74308 '()))))
                          (declare (not safe))
                          (cons _mod-main71033_ __tmp74307))))
                   (declare (not safe))
                   (cons 'apply __tmp74306))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74305 '()))))
                                             (declare (not safe))
                                             (cons __tmp74311 __tmp74304))))
                                      (declare (not safe))
                                      (cons __tmp74315 __tmp74303))))
                               (declare (not safe))
                               (cons 'define __tmp74302)))
                      (write '(gerbil-main))
                      (newline))))
                 (_static-include70864_
                  (lambda (_gsc-opts71024_ _libdir71025_)
                    (letrec* ((_static-dir71027_
                               (path-expand '"static" _libdir71025_))
                              (_user-static-dir71028_
                               (path-expand
                                (path-expand '"lib/static" (gerbil-path))))
                              (_cppflags71029_
                               (string-append
                                '"-I "
                                _static-dir71027_
                                '" -I "
                                _user-static-dir71028_)))
                      (append _gsc-opts71024_
                              (let ((__tmp74316
                                     (let ()
                                       (declare (not safe))
                                       (cons _cppflags71029_ '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp74316))))))
                 (_user-declare70865_
                  (lambda ()
                    (let* ((_gsc-opts70929_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts70860_)))
                           (_gsc-prelude70931_
                            (if _gsc-opts70929_
                                (member '"-prelude" _gsc-opts70929_)
                                '#f))
                           (_gsc-prelude70933_
                            (if _gsc-prelude70931_
                                (read (open-input-string
                                       (cadr _gsc-prelude70931_)))
                                '#f)))
                      (let _lp70936_ ((_rest70938_
                                       (let ()
                                         (declare (not safe))
                                         (cons _gsc-prelude70933_ '())))
                                      (_user-decls70939_ '()))
                        (let* ((_rest7094070948_ _rest70938_)
                               (_else7094270956_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls70939_))
                                      '#f
                                      (let ((__tmp74317
                                             (reverse _user-decls70939_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp74317)))))
                               (_K7094471012_
                                (lambda (_rest70959_ _expr70960_)
                                  (let* ((_expr7096170973_ _expr70960_)
                                         (_else7096470981_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp70936_
                                               _rest70959_
                                               _user-decls70939_)))))
                                    (let ((_K7096971002_
                                           (lambda (_decls71000_)
                                             (let ((__tmp74318
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls70939_
                                                              _decls71000_))))
                                               (declare (not safe))
                                               (_lp70936_
                                                _rest70959_
                                                __tmp74318))))
                                          (_K7096670987_
                                           (lambda (_exprs70985_)
                                             (let ((__tmp74319
                                                    (append _exprs70985_
                                                            _rest70959_)))
                                               (declare (not safe))
                                               (_lp70936_
                                                __tmp74319
                                                _user-decls70939_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr7096170973_))
                                          (let ((_tl7097171007_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr7096170973_)))
                                                (_hd7097071005_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr7096170973_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd7097071005_
                                                         'declare))
                                                (let ((_decls71010_
                                                       _tl7097171007_))
                                                  (declare (not safe))
                                                  (_K7096971002_ _decls71010_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd7097071005_
                                                             'begin))
                                                    (let ((_exprs70995_
                                                           _tl7097171007_))
                                                      (declare (not safe))
                                                      (_K7096670987_
                                                       _exprs70995_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else7096470981_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else7096470981_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7094070948_))
                              (let ((_hd7094571015_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7094070948_)))
                                    (_tl7094671017_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7094070948_))))
                                (let* ((_expr71020_ _hd7094571015_)
                                       (_rest71022_ _tl7094671017_))
                                  (declare (not safe))
                                  (_K7094471012_ _rest71022_ _expr71020_)))
                              (let ()
                                (declare (not safe))
                                (_else7094270956_))))))))
                 (_compile-stub70866_
                  (lambda (_output-scm70873_ _output-bin70874_)
                    (let* ((_gerbil-home70876_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir70878_
                            (path-expand '"lib" _gerbil-home70876_))
                           (_runtime70880_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp70882_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home70876_))
                           (_include-gambit-sharp70884_
                            (string-append
                             '"(include \""
                             _gambit-sharp70882_
                             '"\")"))
                           (_bin-scm70886_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx70859_)))
                           (_deps70888_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx70859_)))
                           (_deps70890_
                            (map gxc#find-static-module-file _deps70888_))
                           (_deps70895_
                            (filter (lambda (_$obj70892_)
                                      (let ((__tmp74320
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty? _$obj70892_))))
                                        (declare (not safe))
                                        (not __tmp74320)))
                                    _deps70890_))
                           (_deps70899_
                            (filter (lambda (_f70897_)
                                      (let ((__tmp74321
                                             (member _f70897_ _runtime70880_)))
                                        (declare (not safe))
                                        (not __tmp74321)))
                                    _deps70895_))
                           (_output-base70901_
                            (string-append
                             (path-strip-extension _output-scm70873_)))
                           (_output-c70903_
                            (string-append _output-base70901_ '".c"))
                           (_output-o70905_
                            (string-append _output-base70901_ '".o"))
                           (_output-c_70907_
                            (string-append _output-base70901_ '"_.c"))
                           (_output-o_70909_
                            (string-append _output-base70901_ '"_.o"))
                           (_gsc-link-opts70911_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options '#f)))
                           (_gsc-cc-opts70913_
                            (let ((__tmp74322
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gsc-cc-options))))
                              (declare (not safe))
                              (_static-include70864_
                               __tmp74322
                               _gerbil-libdir70878_)))
                           (_output-ld-opts70915_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros70917_
                            (if (gerbil-runtime-smp?)
                                (let ((__tmp74324
                                       (let ((__tmp74325
                                              (let ((__tmp74326
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp70884_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp74326))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp74325))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp74324))
                                (let ((__tmp74323
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp70884_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp74323))))
                           (_gsc-link-opts70919_
                            (append _gsc-link-opts70911_ _gsc-gx-macros70917_))
                           (_gerbil-rpath70921_
                            (string-append
                             '"-Wl,-rpath="
                             _gerbil-libdir70878_))
                           (_default-ld-options70923_
                            (let ((__tmp74327
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp74327))))
                      (with-lock
                       gxc#+driver-mutex+
                       (lambda ()
                         (let ((__tmp74328 (path-directory _output-bin70874_)))
                           (declare (not safe))
                           (create-directory* __tmp74328))))
                      (let ((__tmp74329
                             (lambda ()
                               (let ((__tmp74330
                                      (let ((__tmp74331
                                             (let ((__tmp74332
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm70886_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp74332
                                                       _deps70899_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp74331
                                                _runtime70880_))))
                                 (declare (not safe))
                                 (_generate-stub70863_ __tmp74330)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm70873_
                         __tmp74329))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp74338
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74333
                                   (let ((__tmp74334
                                          (let ((__tmp74335
                                                 (let ((__tmp74336
                                                        (let ((__tmp74337
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm70873_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp74337 _gsc-link-opts70919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_70907_
                                                         __tmp74336))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp74335))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp74334))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74338
                               __tmp74333))
                            (let ((__tmp74342
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp74339
                                   (let ((__tmp74340
                                          (let ((__tmp74341
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _output-c_70907_
                                                         '()))))
                                            (declare (not safe))
                                            (cons _output-c70903_
                                                  __tmp74341))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp74340))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74342
                               __tmp74339))
                            (let ((__tmp74352
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp74343
                                   (let ((__tmp74344
                                          (let ((__tmp74345
                                                 (let ((__tmp74346
                                                        (let ((__tmp74347
                                                               (let ((__tmp74348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp74349
                                     (let ((__tmp74350
                                            (let ((__tmp74351
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options70923_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir70878_
                                                    __tmp74351))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp74350))))
                                (declare (not safe))
                                (cons _gerbil-rpath70921_ __tmp74349))))
                         (declare (not safe))
                         (foldr1 cons __tmp74348 _output-ld-opts70915_))))
                  (declare (not safe))
                  (cons _output-o_70909_ __tmp74347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o70905_
                                                         __tmp74346))))
                                            (declare (not safe))
                                            (cons _output-bin70874_
                                                  __tmp74345))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp74344))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp74352
                               __tmp74343)))
                          '#!void)))))
          (let* ((_output-bin70868_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx70859_ _opts70860_)))
                 (_output-scm70870_
                  (string-append _output-bin70868_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub70866_ _output-scm70870_ _output-bin70868_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm70870_))))))
    (define gxc#find-export-binding
      (lambda (_ctx70809_ _id70810_)
        (let ((_$e70856_
               (let ((__tmp74354
                      (lambda (_e7081170813_)
                        (let* ((_g7081570825_ _e7081170813_)
                               (_else7081770833_ (lambda () '#f))
                               (_K7081970837_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g7081570825_
                                 'gx#module-export::t))
                              (let* ((_e7082070840_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g7081570825_ '1)))
                                     (_e7082170843_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g7081570825_ '2)))
                                     (_e7082270846_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g7081570825_ '3))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e7082270846_ '0))
                                    (let ((_e7082370849_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g7081570825_ '4))))
                                      (if ((lambda (_g7085170853_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g7085170853_ _id70810_)))
                                           _e7082370849_)
                                          (let ()
                                            (declare (not safe))
                                            (_K7081970837_))
                                          (let ()
                                            (declare (not safe))
                                            (_else7081770833_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else7081770833_))))
                              (let ()
                                (declare (not safe))
                                (_else7081770833_))))))
                     (__tmp74353
                      (##structure-ref
                       _ctx70809_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp74354 __tmp74353))))
          (if _$e70856_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e70856_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx70801_ _id70802_)
        (let ((_$e70804_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx70801_ _id70802_))))
          (if _$e70804_
              ((lambda (_bind70807_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind70807_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id70802_)))
                 (##structure-ref _bind70807_ '1 gx#binding::t '#f))
               _$e70804_)
              (let ((__tmp74355
                     (##structure-ref
                      _ctx70801_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp74355
                 _id70802_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx70688_)
        (letrec* ((_ht70690_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template70691_
                   (lambda (_in70753_ _phi70754_)
                     (let ((_iphi70756_
                            (fx+ _phi70754_
                                 (##direct-structure-ref
                                  _in70753_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports70757_
                            (##structure-ref
                             (##direct-structure-ref
                              _in70753_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp70759_ ((_rest70761_ _imports70757_)
                                       (_r70762_ '()))
                         (let* ((_rest7076370771_ _rest70761_)
                                (_else7076570779_ (lambda () _r70762_))
                                (_K7076770789_
                                 (lambda (_rest70782_ _in70783_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in70783_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi70756_))
                                           (let ((__tmp74362
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in70783_
                                                          _r70762_))))
                                             (declare (not safe))
                                             (_lp70759_
                                              _rest70782_
                                              __tmp74362))
                                           (let ()
                                             (declare (not safe))
                                             (_lp70759_ _rest70782_ _r70762_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in70783_
                                              'gx#module-import::t))
                                           (let ((_iphi70785_
                                                  (fx+ _phi70754_
                                                       (##direct-structure-ref
                                                        _in70783_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi70785_))
                                                 (let ((__tmp74360
                                                        (let ((__tmp74361
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in70783_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp74361 _r70762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp70759_
                                                    _rest70782_
                                                    __tmp74360))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp70759_
                                                    _rest70782_
                                                    _r70762_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in70783_
                                                  'gx#import-set::t))
                                               (let ((_xphi70787_
                                                      (fx+ _iphi70756_
                                                           (##direct-structure-ref
                                                            _in70783_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi70787_))
                                                     (let ((__tmp74358
                                                            (let ((__tmp74359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in70783_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp74359 _r70762_))))
               (declare (not safe))
               (_lp70759_ _rest70782_ __tmp74358))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi70787_)
                                                         (let ((__tmp74356
                                                                (let ((__tmp74357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template70691_
                                  _in70783_
                                  _iphi70756_))))
                          (declare (not safe))
                          (foldl1 cons _r70762_ __tmp74357))))
                   (declare (not safe))
                   (_lp70759_ _rest70782_ __tmp74356))
                 (let ()
                   (declare (not safe))
                   (_lp70759_ _rest70782_ _r70762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp70759_
                                                  _rest70782_
                                                  _r70762_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest7076370771_))
                               (let ((_hd7076870792_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest7076370771_)))
                                     (_tl7076970794_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest7076370771_))))
                                 (let* ((_in70797_ _hd7076870792_)
                                        (_rest70799_ _tl7076970794_))
                                   (declare (not safe))
                                   (_K7076770789_ _rest70799_ _in70797_)))
                               (let ()
                                 (declare (not safe))
                                 (_else7076570779_))))))))
                  (_find-deps70692_
                   (lambda (_rest70699_ _deps70700_)
                     (let* ((_rest7070170709_ _rest70699_)
                            (_else7070370717_ (lambda () _deps70700_))
                            (_K7070570741_
                             (lambda (_rest70720_ _hd70721_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd70721_
                                      'gx#module-context::t))
                                   (let ((_id70723_
                                          (##structure-ref
                                           _hd70721_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports70724_
                                          (##structure-ref
                                           _hd70721_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref _ht70690_ _id70723_ '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps70692_
                                            _rest70720_
                                            _deps70700_))
                                         (let ((_$e70726_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd70721_))))
                                           (if _$e70726_
                                               ((lambda (_pre70729_)
                                                  (let ((_xdeps70731_
                                                         (let ((__tmp74375
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre70729_ _imports70724_))))
                   (declare (not safe))
                   (_find-deps70692_ __tmp74375 _deps70700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht70690_
                                                       _id70723_
                                                       _hd70721_))
                                                    (let ((__tmp74376
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd70721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps70731_))))
              (declare (not safe))
              (_find-deps70692_ _rest70720_ __tmp74376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e70726_)
                                               (let ((_xdeps70733_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps70692_
                                                         _imports70724_
                                                         _deps70700_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht70690_
                                                    _id70723_
                                                    _hd70721_))
                                                 (let ((__tmp74374
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd70721_
                                                                _xdeps70733_))))
                                                   (declare (not safe))
                                                   (_find-deps70692_
                                                    _rest70720_
                                                    __tmp74374)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd70721_
                                          'gx#prelude-context::t))
                                       (let ((_id70735_
                                              (##structure-ref
                                               _hd70721_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht70690_
                                                _id70735_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps70692_
                                                _rest70720_
                                                _deps70700_))
                                             (let ((_xdeps70737_
                                                    (let ((__tmp74372
                                                           (##structure-ref
                                                            _hd70721_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps70692_
                                                       __tmp74372
                                                       _deps70700_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht70690_
                                                      _id70735_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps70692_
                                                      _rest70720_
                                                      _xdeps70737_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht70690_
                                                        _id70735_
                                                        _hd70721_))
                                                     (let ((__tmp74373
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd70721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps70737_))))
               (declare (not safe))
               (_find-deps70692_ _rest70720_ __tmp74373)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd70721_
                                              'gx#module-import::t))
                                           (if (let ((__tmp74371
                                                      (##direct-structure-ref
                                                       _hd70721_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp74371))
                                               (let ((__tmp74369
                                                      (let ((__tmp74370
                                                             (##direct-structure-ref
                                                              _hd70721_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp74370
                                                              _rest70720_))))
                                                 (declare (not safe))
                                                 (_find-deps70692_
                                                  __tmp74369
                                                  _deps70700_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps70692_
                                                  _rest70720_
                                                  _deps70700_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd70721_
                                                  'gx#module-export::t))
                                               (let ((__tmp74367
                                                      (let ((__tmp74368
                                                             (##direct-structure-ref
                                                              _hd70721_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp74368
                                                              _rest70720_))))
                                                 (declare (not safe))
                                                 (_find-deps70692_
                                                  __tmp74367
                                                  _deps70700_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd70721_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp74366
                                                              (##direct-structure-ref
                                                               _hd70721_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp74366))
                                                       (let ((__tmp74364
                                                              (let ((__tmp74365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd70721_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp74365 _rest70720_))))
                 (declare (not safe))
                 (_find-deps70692_ __tmp74364 _deps70700_))
               (if (fxpositive?
                    (##direct-structure-ref _hd70721_ '2 gx#import-set::t '#f))
                   (let* ((_xdeps70739_
                           (let ()
                             (declare (not safe))
                             (_import-set-template70691_ _hd70721_ '0)))
                          (__tmp74363
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest70720_ _xdeps70739_))))
                     (declare (not safe))
                     (_find-deps70692_ __tmp74363 _deps70700_))
                   (let ()
                     (declare (not safe))
                     (_find-deps70692_ _rest70720_ _deps70700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd70721_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest7070170709_))
                           (let ((_hd7070670744_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest7070170709_)))
                                 (_tl7070770746_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest7070170709_))))
                             (let* ((_hd70749_ _hd7070670744_)
                                    (_rest70751_ _tl7070770746_))
                               (declare (not safe))
                               (_K7070570741_ _rest70751_ _hd70749_)))
                           (let ()
                             (declare (not safe))
                             (_else7070370717_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp74377
                                  (let ((_$e70694_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx70688_))))
                                    (if _$e70694_
                                        ((lambda (_pre70697_)
                                           (let ((__tmp74378
                                                  (##structure-ref
                                                   _ctx70688_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre70697_ __tmp74378)))
                                         _$e70694_)
                                        (##structure-ref
                                         _ctx70688_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps70692_ __tmp74377 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx70619_)
        (let* ((_context-id70621_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx70619_
                       'gx#module-context::t))
                    (##structure-ref _ctx70619_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx70619_)))
               (_scm70623_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id70621_))
                 '".scm"))
               (_dirs70625_ (gx#current-expander-module-library-path))
               (_dirs70631_
                (let ((_user-libpath70627_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath70627_
                      (let ((_user-libpath70629_
                             (path-expand '"lib" _user-libpath70627_)))
                        (if (member _user-libpath70629_ _dirs70625_)
                            _dirs70625_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath70629_ _dirs70625_))))
                      _dirs70625_)))
               (_dirs70640_
                (let ((_$e70633_ (gxc#current-compile-output-dir)))
                  (if _$e70633_
                      ((lambda (_g7063570637_)
                         (let ()
                           (declare (not safe))
                           (cons _g7063570637_ _dirs70631_)))
                       _$e70633_)
                      _dirs70631_)))
               (_dirs70646_
                (map (lambda (_g7064170643_)
                       (path-expand '"static" _g7064170643_))
                     _dirs70640_)))
          (let _lp70649_ ((_rest70651_ _dirs70646_))
            (let* ((_rest7065270660_ _rest70651_)
                   (_else7065470668_
                    (lambda ()
                      (let ((__tmp74379
                             (##structure-ref
                              _ctx70619_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp74379
                         _scm70623_))))
                   (_K7065670676_
                    (lambda (_rest70671_ _dir70672_)
                      (let ((_path70674_ (path-expand _scm70623_ _dir70672_)))
                        (if (file-exists? _path70674_)
                            _path70674_
                            (let ()
                              (declare (not safe))
                              (_lp70649_ _rest70671_)))))))
              (if (let () (declare (not safe)) (##pair? _rest7065270660_))
                  (let ((_hd7065770679_
                         (let ()
                           (declare (not safe))
                           (##car _rest7065270660_)))
                        (_tl7065870681_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7065270660_))))
                    (let* ((_dir70684_ _hd7065770679_)
                           (_rest70686_ _tl7065870681_))
                      (declare (not safe))
                      (_K7065670676_ _rest70686_ _dir70684_)))
                  (let () (declare (not safe)) (_else7065470668_))))))))
    (define gxc#file-empty?
      (lambda (_path70617_)
        (let ((__tmp74380 (file-info-size (file-info _path70617_ '#t))))
          (declare (not safe))
          (zero? __tmp74380))))
    (define gxc#compile-top-module
      (lambda (_ctx70606_)
        (let ((__tmp74384
               (lambda ()
                 (let ((__tmp74385
                        (##structure-ref
                         _ctx70606_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp74385))
                 (if (gxc#current-compile-optimize)
                     (with-lock
                      gxc#+driver-mutex+
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gxc#optimize! _ctx70606_))))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx70606_))
                 (if (let ((__tmp74388
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx70606_))))
                       (declare (not safe))
                       (null? __tmp74388))
                     (let* ((_thr170611_
                             (let ((__tmp74386
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx70606_)))))
                               (declare (not safe))
                               (spawn __tmp74386)))
                            (_thr270614_
                             (let ((__tmp74387
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx70606_)))))
                               (declare (not safe))
                               (spawn __tmp74387))))
                       (let () (declare (not safe)) (gxc#join! _thr170611_))
                       (let () (declare (not safe)) (gxc#join! _thr270614_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx70606_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx70606_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx70606_))
                     '#!void)))
              (__tmp74383
               (let ((__obj74232 (make-object gxc#symbol-table::t '2)))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj74232))
                 __obj74232))
              (__tmp74382
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp74381 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp74384
           gx#current-expander-context
           _ctx70606_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp74383
           gxc#current-compile-runtime-sections
           __tmp74382
           gxc#current-compile-runtime-names
           __tmp74381))))
    (define gxc#collect-bindings
      (lambda (_ctx70604_)
        (let ((__tmp74389
               (##structure-ref _ctx70604_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp74389))))
    (define gxc#compile-runtime-code
      (lambda (_ctx70550_)
        (letrec ((_compile170552_
                  (lambda (_ctx70593_)
                    (let* ((_code70595_
                            (##structure-ref
                             _ctx70593_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt70599_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code70595_))
                                (let ((_idstr70597_
                                       (let ((__tmp74390
                                              (##structure-ref
                                               _ctx70593_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp74390))))
                                  (string-append _idstr70597_ '"__0"))
                                '#f)))
                      (if _rt70599_
                          (begin
                            (let ((__tmp74391
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp74391 _ctx70593_ _rt70599_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code70554_
                               _ctx70593_
                               _code70595_)))
                          (let ((_path70602_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx70593_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file _path70602_ void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code70555_
                         _ctx70593_
                         _code70595_
                         _rt70599_)))))
                 (_context-timestamp70553_
                  (lambda (_ctx70591_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx70591_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code70554_
                  (lambda (_ctx70573_ _code70574_)
                    (let* ((_lifts70576_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code70579_
                            (let ((__tmp74394
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code70574_))))
                                  (__tmp74393
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp74392
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp74394
                               gx#current-expander-context
                               _ctx70573_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts70576_
                               gxc#current-compile-marks
                               __tmp74393
                               gxc#current-compile-identifiers
                               __tmp74392)))
                           (_runtime-code70581_
                            (if (let ((__tmp74398 (unbox _lifts70576_)))
                                  (declare (not safe))
                                  (null? __tmp74398))
                                _runtime-code70579_
                                (let ((__tmp74395
                                       (let ((__tmp74397
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code70579_
                                                      '())))
                                             (__tmp74396
                                              (reverse (unbox _lifts70576_))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp74397 __tmp74396))))
                                  (declare (not safe))
                                  (cons 'begin __tmp74395))))
                           (_runtime-code70583_
                            (let ((__tmp74399
                                   (let ((__tmp74401
                                          (let ((__tmp74402
                                                 (let ((__tmp74405
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp70553_
                                                           _ctx70573_)))
                                                       (__tmp74403
                                                        (let ((__tmp74404
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp74404
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp74405
                                                         __tmp74403))))
                                            (declare (not safe))
                                            (cons 'define __tmp74402)))
                                         (__tmp74400
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code70581_ '()))))
                                     (declare (not safe))
                                     (cons __tmp74401 __tmp74400))))
                              (declare (not safe))
                              (cons 'begin __tmp74399)))
                           (_scm070585_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx70573_
                               '0
                               '".scm"))))
                      (let ((_scms70588_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx70573_))))
                        (let ((__tmp74406
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm070585_
                                    _runtime-code70583_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp74406
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms70588_)
                            (delete-file _scms70588_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm070585_
                           '" => "
                           _scms70588_))
                        (copy-file _scm070585_ _scms70588_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm070585_))))))
                 (_generate-loader-code70555_
                  (lambda (_ctx70562_ _code70563_ _rt70564_)
                    (let* ((_loader-code70567_
                            (let ((__tmp74407
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code70563_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp74407
                               gx#current-expander-context
                               _ctx70562_)))
                           (_loader-code70569_
                            (if _rt70564_
                                (let ((__tmp74408
                                       (let ((__tmp74409
                                              (let ((__tmp74410
                                                     (let ((__tmp74411
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt70564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp74411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp74410 '()))))
                                         (declare (not safe))
                                         (cons _loader-code70567_
                                               __tmp74409))))
                                  (declare (not safe))
                                  (cons 'begin __tmp74408))
                                _loader-code70567_)))
                      (let ((__tmp74412
                             (lambda ()
                               (let ((__tmp74413
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx70562_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp74413
                                  _loader-code70569_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp74412
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules70557_
                 (let ((__tmp74414
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx70550_))))
                   (declare (not safe))
                   (cons _ctx70550_ __tmp74414))))
            (for-each
             (lambda (_ctx70559_)
               (let ((__tmp74415
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile170552_ _ctx70559_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp74415
                  gxc#current-compile-decls
                  '())))
             _all-modules70557_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx70447_)
        (letrec ((_compile-ssi70449_
                  (lambda (_code70520_)
                    (let* ((_path70522_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx70447_
                               '#f
                               '".ssi")))
                           (_prelude70533_
                            (let* ((_super70524_
                                    (##structure-ref
                                     _ctx70447_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e70526_
                                    (##structure-ref
                                     _super70524_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e70526_
                                  ((lambda (_g7052870530_)
                                     (make-symbol '":" _g7052870530_))
                                   _$e70526_)
                                  ':<root>)))
                           (_ns70535_
                            (##structure-ref
                             _ctx70447_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr70537_
                            (symbol->string
                             (##structure-ref
                              _ctx70447_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg70544_
                            (let ((_$e70539_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr70537_ '#\/))))
                              (if _$e70539_
                                  ((lambda (_x70542_)
                                     (string->symbol
                                      (substring _idstr70537_ '0 _x70542_)))
                                   _$e70539_)
                                  '#f)))
                           (_rt70546_
                            (let ((__tmp74416
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp74416 _ctx70447_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path70522_))
                      (let ((__tmp74417
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude70533_))
                               (if _pkg70544_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg70544_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns70535_))
                               (newline)
                               (pretty-print _code70520_)
                               (if _rt70546_
                                   (pretty-print
                                    (let ((__tmp74418
                                           (let ((__tmp74422
                                                  (let ((__tmp74423
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp74423)))
                                                 (__tmp74419
                                                  (let ((__tmp74420
                                                         (let ((__tmp74421
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt70546_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp74421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp74420 '()))))
                                             (declare (not safe))
                                             (cons __tmp74422 __tmp74419))))
                                      (declare (not safe))
                                      (cons '%#call __tmp74418)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path70522_
                         __tmp74417)))))
                 (_compile-phi70450_
                  (lambda (_part70460_)
                    (let* ((_part7046170474_ _part70460_)
                           (_E7046370478_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part7046170474_))))
                           (_K7046470489_
                            (lambda (_code70481_
                                     _n70482_
                                     _phi70483_
                                     _phi-ctx70484_)
                              (let* ((_code70487_
                                      (let ((__tmp74424
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code70481_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp74424
                                         gx#current-expander-context
                                         _phi-ctx70484_
                                         gx#current-expander-phi
                                         _phi70483_)))
                                     (__tmp74425
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx70447_
                                         _n70482_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp74425
                                 _code70487_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part7046170474_))
                          (let ((_hd7046570492_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part7046170474_)))
                                (_tl7046670494_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part7046170474_))))
                            (let ((_phi-ctx70497_ _hd7046570492_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl7046670494_))
                                  (let ((_hd7046770499_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl7046670494_)))
                                        (_tl7046870501_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl7046670494_))))
                                    (let ((_phi70504_ _hd7046770499_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7046870501_))
                                          (let ((_hd7046970506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7046870501_)))
                                                (_tl7047070508_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7046870501_))))
                                            (let ((_n70511_ _hd7046970506_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl7047070508_))
                                                  (let ((_hd7047170513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl7047070508_)))
                                                        (_tl7047270515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl7047070508_))))
                                                    (let ((_code70518_
                                                           _hd7047170513_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl7047270515_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K7046470489_
                                                             _code70518_
                                                             _n70511_
                                                             _phi70504_
                                                             _phi-ctx70497_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E7046370478_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E7046370478_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7046370478_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E7046370478_)))))
                          (let () (declare (not safe)) (_E7046370478_)))))))
          (let ((_g74426_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx70447_))))
            (begin
              (let ((_g74427_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g74426_)
                           (##vector-length _g74426_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g74427_ 2)))
                    (error "Context expects 2 values" _g74427_)))
              (let ((_ssi-code70452_
                     (let () (declare (not safe)) (##vector-ref _g74426_ 0)))
                    (_phi-code70453_
                     (let () (declare (not safe)) (##vector-ref _g74426_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi70449_ _ssi-code70452_))
                  (let ((_threads70458_
                         (map (lambda (_code70455_)
                                (let ((__tmp74428
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi70450_ _code70455_)))))
                                  (declare (not safe))
                                  (spawn __tmp74428)))
                              _phi-code70453_)))
                    (for-each gxc#join! _threads70458_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx70430_)
        (let* ((_path70432_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx70430_ '#f '".ssxi.ss")))
               (_code70434_
                (let ((__tmp74429
                       (##structure-ref
                        _ctx70430_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp74429)))
               (_idstr70436_
                (symbol->string
                 (##structure-ref _ctx70430_ '1 gx#expander-context::t '#f)))
               (_pkg70443_
                (let ((_$e70438_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr70436_ '#\/))))
                  (if _$e70438_
                      ((lambda (_x70441_)
                         (string->symbol (substring _idstr70436_ '0 _x70441_)))
                       _$e70438_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path70432_))
          (let ((__tmp74430
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg70443_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg70443_))
                       '#!void)
                   (newline)
                   (pretty-print _code70434_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path70432_ __tmp74430)))))
    (define gxc#generate-meta-code
      (lambda (_ctx70423_)
        (let* ((_state70425_
                (let ((__obj74233 (make-object gxc#meta-state::t '4)))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj74233 _ctx70423_))
                  __obj74233))
               (_ssi-code70427_
                (let ((__tmp74431
                       (##structure-ref
                        _ctx70423_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp74431 _state70425_))))
          (values _ssi-code70427_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state70425_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx70416_)
        (let ((_lifts70418_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp74434
                 (lambda ()
                   (let ((_code70421_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx70416_))))
                     (if (let ((__tmp74438 (unbox _lifts70418_)))
                           (declare (not safe))
                           (null? __tmp74438))
                         _code70421_
                         (let ((__tmp74435
                                (let ((__tmp74437
                                       (let ()
                                         (declare (not safe))
                                         (cons _code70421_ '())))
                                      (__tmp74436
                                       (reverse (unbox _lifts70418_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp74437 __tmp74436))))
                           (declare (not safe))
                           (cons 'begin __tmp74435))))))
                (__tmp74433
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp74432
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp74434
             gxc#current-compile-lift
             _lifts70418_
             gxc#current-compile-marks
             __tmp74433
             gxc#current-compile-identifiers
             __tmp74432)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx70412_)
        (let ((_modules70414_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp74439
                 (##structure-ref _ctx70412_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp74439 _modules70414_))
          (reverse (unbox _modules70414_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path70395_ _code70396_ _phi?70397_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path70395_))
        (let ((__tmp74440
               (lambda ()
                 (pretty-print
                  (let ((__tmp74441
                         (let ((__tmp74448
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp74442
                                (let ((__tmp74447
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp74443
                                       (let ((__tmp74446
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp74444
                                              (let ((__tmp74445
                                                     (if _phi?70397_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons '() __tmp74445))))
                                         (declare (not safe))
                                         (cons __tmp74446 __tmp74444))))
                                  (declare (not safe))
                                  (cons __tmp74447 __tmp74443))))
                           (declare (not safe))
                           (cons __tmp74448 __tmp74442))))
                    (declare (not safe))
                    (cons 'declare __tmp74441)))
                 (pretty-print _code70396_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path70395_ __tmp74440))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path70395_ _phi?70397_))
            '#!void)
        (if (gxc#current-compile-keep-scm) '#!void (delete-file _path70395_))))
    (define gxc#compile-scm-file__0
      (lambda (_path70403_ _code70404_)
        (let ((_phi?70406_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path70403_ _code70404_ _phi?70406_))))
    (define gxc#compile-scm-file
      (lambda _g74450_
        (let ((_g74449_ (let () (declare (not safe)) (##length _g74450_))))
          (cond ((let () (declare (not safe)) (##fx= _g74449_ 2))
                 (apply (lambda (_path70403_ _code70404_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0 _path70403_ _code70404_)))
                        _g74450_))
                ((let () (declare (not safe)) (##fx= _g74449_ 3))
                 (apply (lambda (_path70408_ _code70409_ _phi?70410_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path70408_
                             _code70409_
                             _phi?70410_)))
                        _g74450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g74450_))))))
    (define gxc#gsc-debug-options__%
      (lambda (_phi?70315_)
        (if (gxc#current-compile-debug)
            (if _phi?70315_
                '()
                (let ((__tmp74451
                       (let ((__tmp74452
                              (let ((__tmp74453
                                     (let ()
                                       (declare (not safe))
                                       (cons '"-g" '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp74453))))
                         (declare (not safe))
                         (cons '"-track-scheme" __tmp74452))))
                  (declare (not safe))
                  (cons '"-debug-source" __tmp74451)))
            '())))
    (define gxc#gsc-debug-options__0
      (lambda ()
        (let ((_phi?70390_ '#f))
          (declare (not safe))
          (gxc#gsc-debug-options__% _phi?70390_))))
    (define gxc#gsc-debug-options
      (lambda _g74455_
        (let ((_g74454_ (let () (declare (not safe)) (##length _g74455_))))
          (cond ((let () (declare (not safe)) (##fx= _g74454_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__0)))
                        _g74455_))
                ((let () (declare (not safe)) (##fx= _g74454_ 1))
                 (apply (lambda (_phi?70392_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__% _phi?70392_)))
                        _g74455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-debug-options
                  _g74455_))))))
    (define gxc#gsc-link-options
      (lambda (_phi?70224_)
        (let _lp70226_ ((_rest70228_ (gxc#current-compile-gsc-options))
                        (_opts70229_ '()))
          (let* ((_rest7023070250_ _rest70228_)
                 (_else7023470258_
                  (lambda ()
                    (let ((__tmp74457 (reverse _opts70229_))
                          (__tmp74456
                           (let ()
                             (declare (not safe))
                             (gxc#gsc-debug-options__% _phi?70224_))))
                      (declare (not safe))
                      (foldr1 cons __tmp74457 __tmp74456)))))
            (let ((_K7024470301_
                   (lambda (_rest70299_)
                     (let ()
                       (declare (not safe))
                       (_lp70226_ _rest70299_ _opts70229_))))
                  (_K7023970283_
                   (lambda (_rest70281_)
                     (let ()
                       (declare (not safe))
                       (_lp70226_ _rest70281_ _opts70229_))))
                  (_K7023670265_
                   (lambda (_rest70262_ _opt70263_)
                     (let ((__tmp74458
                            (let ()
                              (declare (not safe))
                              (cons _opt70263_ _opts70229_))))
                       (declare (not safe))
                       (_lp70226_ _rest70262_ __tmp74458)))))
              (if (let () (declare (not safe)) (##pair? _rest7023070250_))
                  (let ((_tl7024670306_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7023070250_)))
                        (_hd7024570304_
                         (let ()
                           (declare (not safe))
                           (##car _rest7023070250_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd7024570304_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7024670306_))
                            (let* ((_tl7024870309_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl7024670306_)))
                                   (_rest70312_ _tl7024870309_))
                              (declare (not safe))
                              (_K7024470301_ _rest70312_))
                            (let ((_opt70273_ _hd7024570304_)
                                  (_rest70275_ _tl7024670306_))
                              (let ()
                                (declare (not safe))
                                (_K7023670265_ _rest70275_ _opt70273_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd7024570304_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl7024670306_))
                                (let* ((_tl7024370291_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl7024670306_)))
                                       (_rest70294_ _tl7024370291_))
                                  (declare (not safe))
                                  (_K7023970283_ _rest70294_))
                                (let ((_opt70273_ _hd7024570304_)
                                      (_rest70275_ _tl7024670306_))
                                  (let ()
                                    (declare (not safe))
                                    (_K7023670265_ _rest70275_ _opt70273_))))
                            (let ((_opt70273_ _hd7024570304_)
                                  (_rest70275_ _tl7024670306_))
                              (let ()
                                (declare (not safe))
                                (_K7023670265_ _rest70275_ _opt70273_))))))
                  (let () (declare (not safe)) (_else7023470258_))))))))
    (define gxc#gsc-cc-options
      (lambda ()
        (let _lp70136_ ((_rest70138_ (gxc#current-compile-gsc-options))
                        (_opts70139_ '()))
          (let* ((_rest7014070160_ _rest70138_)
                 (_else7014470168_ (lambda () (reverse _opts70139_))))
            (let ((_K7015470207_
                   (lambda (_rest70204_ _opt70205_)
                     (let ((__tmp74459
                            (let ((__tmp74460
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts70139_))))
                              (declare (not safe))
                              (cons _opt70205_ __tmp74460))))
                       (declare (not safe))
                       (_lp70136_ _rest70204_ __tmp74459))))
                  (_K7014970188_
                   (lambda (_rest70186_)
                     (let ()
                       (declare (not safe))
                       (_lp70136_ _rest70186_ _opts70139_))))
                  (_K7014670174_
                   (lambda (_rest70172_)
                     (let ()
                       (declare (not safe))
                       (_lp70136_ _rest70172_ _opts70139_)))))
              (if (let () (declare (not safe)) (##pair? _rest7014070160_))
                  (let ((_tl7015670212_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7014070160_)))
                        (_hd7015570210_
                         (let ()
                           (declare (not safe))
                           (##car _rest7014070160_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd7015570210_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7015670212_))
                            (let ((_tl7015870217_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7015670212_)))
                                  (_hd7015770215_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7015670212_))))
                              (let ((_opt70220_ _hd7015770215_)
                                    (_rest70222_ _tl7015870217_))
                                (let ()
                                  (declare (not safe))
                                  (_K7015470207_ _rest70222_ _opt70220_))))
                            (let ((_rest70180_ _tl7015670212_))
                              (declare (not safe))
                              (_K7014670174_ _rest70180_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd7015570210_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl7015670212_))
                                (let* ((_tl7015370196_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl7015670212_)))
                                       (_rest70199_ _tl7015370196_))
                                  (declare (not safe))
                                  (_K7014970188_ _rest70199_))
                                (let ((_rest70180_ _tl7015670212_))
                                  (declare (not safe))
                                  (_K7014670174_ _rest70180_)))
                            (let ((_rest70180_ _tl7015670212_))
                              (declare (not safe))
                              (_K7014670174_ _rest70180_)))))
                  (let () (declare (not safe)) (_else7014470168_))))))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp70047_ ((_rest70049_ (gxc#current-compile-gsc-options))
                        (_opts70050_ '()))
          (let* ((_rest7005170071_ _rest70049_)
                 (_else7005570079_ (lambda () _opts70050_)))
            (let ((_K7006570122_
                   (lambda (_rest70120_)
                     (let ()
                       (declare (not safe))
                       (_lp70047_ _rest70120_ _opts70050_))))
                  (_K7006070100_
                   (lambda (_rest70097_ _opt70098_)
                     (let ((__tmp74461
                            (append _opts70050_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt70098_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp70047_ _rest70097_ __tmp74461))))
                  (_K7005770085_
                   (lambda (_rest70083_)
                     (let ()
                       (declare (not safe))
                       (_lp70047_ _rest70083_ _opts70050_)))))
              (if (let () (declare (not safe)) (##pair? _rest7005170071_))
                  (let ((_tl7006770127_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7005170071_)))
                        (_hd7006670125_
                         (let ()
                           (declare (not safe))
                           (##car _rest7005170071_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd7006670125_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7006770127_))
                            (let* ((_tl7006970130_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl7006770127_)))
                                   (_rest70133_ _tl7006970130_))
                              (declare (not safe))
                              (_K7006570122_ _rest70133_))
                            (let ((_rest70091_ _tl7006770127_))
                              (declare (not safe))
                              (_K7005770085_ _rest70091_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd7006670125_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl7006770127_))
                                (let ((_tl7006470110_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl7006770127_)))
                                      (_hd7006370108_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl7006770127_))))
                                  (let ((_opt70113_ _hd7006370108_)
                                        (_rest70115_ _tl7006470110_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7006070100_ _rest70115_ _opt70113_))))
                                (let ((_rest70091_ _tl7006770127_))
                                  (declare (not safe))
                                  (_K7005770085_ _rest70091_)))
                            (let ((_rest70091_ _tl7006770127_))
                              (declare (not safe))
                              (_K7005770085_ _rest70091_)))))
                  (let () (declare (not safe)) (_else7005570079_))))))))
    (define gxc#not-string-empty?
      (lambda (_str70044_)
        (let ((__tmp74462
               (let () (declare (not safe)) (string-empty? _str70044_))))
          (declare (not safe))
          (not __tmp74462))))
    (define gxc#gsc-compile-file
      (lambda (_path70012_ _phi?70013_)
        (letrec ((_gsc-link-path70015_
                  (lambda (_base-path70036_)
                    (let _lp70038_ ((_n70040_ '1))
                      (let ((_path70042_
                             (string-append
                              _base-path70036_
                              '".o"
                              (number->string _n70040_))))
                        (if (file-exists? _path70042_)
                            (let ((__tmp74463
                                   (let ()
                                     (declare (not safe))
                                     (+ _n70040_ '1))))
                              (declare (not safe))
                              (_lp70038_ __tmp74463))
                            _path70042_))))))
          (let* ((_base-path70017_ (path-strip-extension _path70012_))
                 (_path-c70019_ (string-append _base-path70017_ '".c"))
                 (_path-o70021_ (string-append _base-path70017_ '".o"))
                 (_link-path70023_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path70015_ _base-path70017_)))
                 (_link-path-c70025_ (string-append _link-path70023_ '".c"))
                 (_link-path-o70027_ (string-append _link-path70023_ '".o"))
                 (_gsc-link-opts70029_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options _phi?70013_)))
                 (_gsc-cc-opts70031_
                  (let () (declare (not safe)) (gxc#gsc-cc-options)))
                 (_gcc-ld-opts70033_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp74470 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp74464
                   (let ((__tmp74465
                          (let ((__tmp74466
                                 (let ((__tmp74467
                                        (let ((__tmp74468
                                               (let ((__tmp74469
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path70012_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp74469
                                                         _gsc-link-opts70029_))))
                                          (declare (not safe))
                                          (cons _link-path-c70025_
                                                __tmp74468))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp74467))))
                            (declare (not safe))
                            (cons '"-flat" __tmp74466))))
                     (declare (not safe))
                     (cons '"-link" __tmp74465))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp74470 __tmp74464))
            (let ((__tmp74477 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp74471
                   (let ((__tmp74472
                          (let ((__tmp74473
                                 (let ((__tmp74474
                                        (let ((__tmp74475
                                               (let ((__tmp74476
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c70025_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c70019_
                                                       __tmp74476))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp74475
                                                  _gsc-cc-opts70031_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp74474))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp74473))))
                     (declare (not safe))
                     (cons '"-obj" __tmp74472))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp74477 __tmp74471))
            (let ((__tmp74483 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp74478
                   (let ((__tmp74479
                          (let ((__tmp74480
                                 (let ((__tmp74481
                                        (let ((__tmp74482
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o70027_
                                                       _gcc-ld-opts70033_))))
                                          (declare (not safe))
                                          (cons _path-o70021_ __tmp74482))))
                                   (declare (not safe))
                                   (cons _link-path70023_ __tmp74481))))
                            (declare (not safe))
                            (cons '"-o" __tmp74480))))
                     (declare (not safe))
                     (cons '"-shared" __tmp74479))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp74483
               __tmp74478))
            (for-each
             delete-file
             (let ((__tmp74484
                    (let ((__tmp74485
                           (let ((__tmp74486
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o70027_ '()))))
                             (declare (not safe))
                             (cons _link-path-c70025_ __tmp74486))))
                      (declare (not safe))
                      (cons _path-o70021_ __tmp74485))))
               (declare (not safe))
               (cons _path-c70019_ __tmp74484)))))))
    (define gxc#compile-output-file
      (lambda (_ctx69983_ _n69984_ _ext69985_)
        (letrec ((_module-relative-path69987_
                  (lambda (_ctx70010_)
                    (path-strip-directory
                     (let ((__tmp74487
                            (##structure-ref
                             _ctx70010_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp74487)))))
                 (_module-source-directory69988_
                  (lambda (_ctx70006_)
                    (path-directory
                     (let ((_mpath70008_
                            (##structure-ref
                             _ctx70006_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let () (declare (not safe)) (string? _mpath70008_))
                           _mpath70008_
                           (let ()
                             (declare (not safe))
                             (last _mpath70008_)))))))
                 (_section-string69989_
                  (lambda (_n70004_)
                    (if (let () (declare (not safe)) (number? _n70004_))
                        (number->string _n70004_)
                        (if (let () (declare (not safe)) (symbol? _n70004_))
                            (symbol->string _n70004_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n70004_))
                                _n70004_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n70004_)))))))
                 (_file-name69990_
                  (lambda (_path70002_)
                    (if _n69984_
                        (string-append
                         _path70002_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string69989_ _n69984_))
                         _ext69985_)
                        (string-append _path70002_ _ext69985_))))
                 (_file-path69991_
                  (lambda ()
                    (let ((_$e69997_ (gxc#current-compile-output-dir)))
                      (if _$e69997_
                          ((lambda (_outdir70000_)
                             (path-expand
                              (let ((__tmp74489
                                     (let ((__tmp74490
                                            (##structure-ref
                                             _ctx69983_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp74490))))
                                (declare (not safe))
                                (_file-name69990_ __tmp74489))
                              _outdir70000_))
                           _$e69997_)
                          (path-expand
                           (let ((__tmp74488
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path69987_ _ctx69983_))))
                             (declare (not safe))
                             (_file-name69990_ __tmp74488))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory69988_ _ctx69983_))))))))
          (let ((_path69993_ (let () (declare (not safe)) (_file-path69991_))))
            (with-lock
             gxc#+driver-mutex+
             (lambda ()
               (let ((__tmp74491 (path-directory _path69993_)))
                 (declare (not safe))
                 (create-directory* __tmp74491))))
            _path69993_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx69965_)
        (letrec ((_file-name69967_
                  (lambda (_id69981_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id69981_))
                     '".scm")))
                 (_file-path69968_
                  (lambda ()
                    (let* ((_file69974_
                            (let ((__tmp74492
                                   (##structure-ref
                                    _ctx69965_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name69967_ __tmp74492)))
                           (_$e69976_ (gxc#current-compile-output-dir)))
                      (if _$e69976_
                          ((lambda (_outdir69979_)
                             (path-expand
                              _file69974_
                              (path-expand '"static" _outdir69979_)))
                           _$e69976_)
                          (path-expand _file69974_ '"static"))))))
          (let ((_path69970_ (let () (declare (not safe)) (_file-path69968_))))
            (with-lock
             gxc#+driver-mutex+
             (lambda ()
               (let ((__tmp74493 (path-directory _path69970_)))
                 (declare (not safe))
                 (create-directory* __tmp74493))))
            _path69970_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx69952_ _opts69953_)
        (let ((_$e69955_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts69953_))))
          (if _$e69955_
              (values _$e69955_)
              (let* ((_mod-str69958_
                      (symbol->string
                       (##structure-ref
                        _ctx69952_
                        '1
                        gx#expander-context::t
                        '#f)))
                     (_$e69960_
                      (let ()
                        (declare (not safe))
                        (string-rindex _mod-str69958_ '#\/))))
                (if _$e69960_
                    ((lambda (_ix69963_)
                       (substring
                        _mod-str69958_
                        (let () (declare (not safe)) (fx+ _ix69963_ '1))
                        (string-length _mod-str69958_)))
                     _$e69960_)
                    _mod-str69958_))))))
    (define gxc#static-module-name
      (lambda (_idstr69945_)
        (if (let () (declare (not safe)) (string? _idstr69945_))
            (let* ((_str69947_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr69945_)))
                   (_strs69949_
                    (let ()
                      (declare (not safe))
                      (string-split _str69947_ '#\/))))
              (let () (declare (not safe)) (string-join _strs69949_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr69945_))
                (let ((__tmp74494 (symbol->string _idstr69945_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp74494))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr69945_))))))
    (define gxc#invoke__%
      (lambda (_g74495_
               _stdout-redirection6990969913_
               _stderr-redirection6991069915_
               _program69917_
               _args69918_)
        (let* ((_stdout-redirection69920_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection6990969913_ absent-value))
                    '#f
                    _stdout-redirection6990969913_))
               (_stderr-redirection69922_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection6991069915_ absent-value))
                    '#f
                    _stderr-redirection6991069915_)))
          (let ((__tmp74496
                 (let ()
                   (declare (not safe))
                   (cons _program69917_ _args69918_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp74496))
          (let ((_proc69924_
                 (open-process
                  (let ((__tmp74497
                         (let ((__tmp74498
                                (let ((__tmp74499
                                       (let ((__tmp74500
                                              (let ((__tmp74501
                                                     (let ((__tmp74502
                                                            (let ((__tmp74503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection69922_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp74503))))
               (declare (not safe))
               (cons _stdout-redirection69920_ __tmp74502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp74501))))
                                         (declare (not safe))
                                         (cons _args69918_ __tmp74500))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp74499))))
                           (declare (not safe))
                           (cons _program69917_ __tmp74498))))
                    (declare (not safe))
                    (cons 'path: __tmp74497)))))
            (if (or _stdout-redirection69920_ _stderr-redirection69922_)
                (read-line _proc69924_ '#f)
                '#!void)
            (let ((_status69929_ (process-status _proc69924_)))
              (close-port _proc69924_)
              (if (let () (declare (not safe)) (zero? _status69929_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program69917_))))))))
    (define gxc#invoke__@
      (lambda (_keys6990869934_ . _args69936_)
        (apply gxc#invoke__%
               _keys6990869934_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys6990869934_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys6990869934_
                  'stderr-redirection:
                  absent-value))
               _args69936_)))
    (define gxc#invoke
      (lambda _args6991169942_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args6991169942_)))
    (define gxc#join!
      (lambda (_thread69902_)
        (let ((__tmp74505
               (lambda (_exn69904_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn69904_))
                     (let ((__tmp74506
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn69904_))))
                       (declare (not safe))
                       (raise __tmp74506))
                     (let () (declare (not safe)) (raise _exn69904_)))))
              (__tmp74504 (lambda () (thread-join! _thread69902_))))
          (declare (not safe))
          (with-catch __tmp74505 __tmp74504))))))
