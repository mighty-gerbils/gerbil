(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708165436)
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
      (lambda (_path299371_ _fun299372_)
        (with-output-to-file
         (let ((__tmp304033
                (let ()
                  (declare (not safe))
                  (cons _path299371_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp304033))
         _fun299372_)))
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
      (lambda (_gerbil-libdir299366_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir299366_)))
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
      (lambda (_dir299364_) (delete-file-or-directory _dir299364_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath299338_ _opts299339_)
        (if (let () (declare (not safe)) (string? _srcpath299338_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath299338_)))
        (let ((_outdir299341_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts299339_)))
              (_invoke-gsc?299342_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts299339_)))
              (_gsc-options299343_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts299339_)))
              (_keep-scm?299344_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts299339_)))
              (_verbosity299345_
               (let () (declare (not safe)) (pgetq 'verbose: _opts299339_)))
              (_optimize299346_
               (let () (declare (not safe)) (pgetq 'optimize: _opts299339_)))
              (_debug299347_
               (let () (declare (not safe)) (pgetq 'debug: _opts299339_)))
              (_gen-ssxi299348_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts299339_))))
          (if _outdir299341_
              (let ((__tmp304034
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir299341_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp304034))
              '#!void)
          (if _optimize299346_
              (let ((__tmp304035
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp304035))
              '#!void)
          (let ((__tmp304039
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath299338_))
                   (let ((__tmp304040
                          (let ((__tmp304041
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath299338_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp304041))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp304040))))
                (__tmp304038
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp304036
                 (let ((__tmp304037
                        (let ()
                          (declare (not safe))
                          (cons _srcpath299338_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp304037))))
            (declare (not safe))
            (call-with-parameters
             __tmp304039
             gxc#current-compile-output-dir
             _outdir299341_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?299342_
             gxc#current-compile-gsc-options
             _gsc-options299343_
             gxc#current-compile-keep-scm
             _keep-scm?299344_
             gxc#current-compile-verbose
             _verbosity299345_
             gxc#current-compile-optimize
             _optimize299346_
             gxc#current-compile-debug
             _debug299347_
             gxc#current-compile-generate-ssxi
             _gen-ssxi299348_
             gxc#current-compile-timestamp
             __tmp304038
             gxc#current-compile-context
             __tmp304036
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath299357_)
        (let ((_opts299359_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath299357_ _opts299359_))))
    (define gxc#compile-module
      (lambda _g304043_
        (let ((_g304042_ (let () (declare (not safe)) (##length _g304043_))))
          (cond ((let () (declare (not safe)) (##fx= _g304042_ 1))
                 (apply (lambda (_srcpath299357_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath299357_)))
                        _g304043_))
                ((let () (declare (not safe)) (##fx= _g304042_ 2))
                 (apply (lambda (_srcpath299361_ _opts299362_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath299361_
                             _opts299362_)))
                        _g304043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g304043_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath299314_ _opts299315_)
        (if (let () (declare (not safe)) (string? _srcpath299314_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath299314_)))
        (let ((_outdir299317_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts299315_)))
              (_invoke-gsc?299318_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts299315_)))
              (_gsc-options299319_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts299315_)))
              (_keep-scm?299320_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts299315_)))
              (_verbosity299321_
               (let () (declare (not safe)) (pgetq 'verbose: _opts299315_)))
              (_debug299322_
               (let () (declare (not safe)) (pgetq 'debug: _opts299315_))))
          (if _outdir299317_
              (let ((__tmp304044
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir299317_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp304044))
              '#!void)
          (let ((__tmp304048
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath299314_))
                   (let ((__tmp304049
                          (let ((__tmp304050
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath299314_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp304050))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp304049
                      _opts299315_))))
                (__tmp304047
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp304045
                 (let ((__tmp304046
                        (let ()
                          (declare (not safe))
                          (cons _srcpath299314_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp304046))))
            (declare (not safe))
            (call-with-parameters
             __tmp304048
             gxc#current-compile-output-dir
             _outdir299317_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?299318_
             gxc#current-compile-gsc-options
             _gsc-options299319_
             gxc#current-compile-keep-scm
             _keep-scm?299320_
             gxc#current-compile-verbose
             _verbosity299321_
             gxc#current-compile-debug
             _debug299322_
             gxc#current-compile-timestamp
             __tmp304047
             gxc#current-compile-context
             __tmp304045
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath299330_)
        (let ((_opts299332_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath299330_ _opts299332_))))
    (define gxc#compile-exe
      (lambda _g304052_
        (let ((_g304051_ (let () (declare (not safe)) (##length _g304052_))))
          (cond ((let () (declare (not safe)) (##fx= _g304051_ 1))
                 (apply (lambda (_srcpath299330_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath299330_)))
                        _g304052_))
                ((let () (declare (not safe)) (##fx= _g304051_ 2))
                 (apply (lambda (_srcpath299334_ _opts299335_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath299334_ _opts299335_)))
                        _g304052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g304052_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx299310_ _opts299311_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts299311_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx299310_
               _opts299311_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx299310_
               _opts299311_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx299193_ _opts299194_)
        (letrec ((_generate-stub299196_
                  (lambda (_builtin-modules299306_)
                    (let ((_mod-main299308_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx299193_ 'main))))
                      (write (let ((__tmp304053
                                    (let ((__tmp304054
                                           (let ((__tmp304055
                                                  (let ((__tmp304056
                                                         (let ((__tmp304058
                                                                (let ((__tmp304059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules299306_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp304059)))
                       (__tmp304057
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp304058 __tmp304057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp304056))))
                                             (declare (not safe))
                                             (cons __tmp304055 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp304054))))
                               (declare (not safe))
                               (cons 'define __tmp304053)))
                      (write (let ((__tmp304060
                                    (let ((__tmp304099
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp304061
                                           (let ((__tmp304062
                                                  (let ((__tmp304063
                                                         (let ((__tmp304087
                                                                (let ((__tmp304088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp304089
                                      (let ((__tmp304097
                                             (let ((__tmp304098
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp304098)))
                                            (__tmp304090
                                             (let ((__tmp304091
                                                    (let ((__tmp304092
                                                           (let ((__tmp304093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp304094
                                 (let ((__tmp304095
                                        (let ((__tmp304096
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp304096 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp304095))))
                            (declare (not safe))
                            (cons __tmp304094 '()))))
                     (declare (not safe))
                     (cons _mod-main299308_ __tmp304093))))
              (declare (not safe))
              (cons 'apply __tmp304092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp304091 '()))))
                                        (declare (not safe))
                                        (cons __tmp304097 __tmp304090))))
                                 (declare (not safe))
                                 (cons '() __tmp304089))))
                          (declare (not safe))
                          (cons 'lambda __tmp304088)))
                       (__tmp304064
                        (let ((__tmp304065
                               (let ((__tmp304066
                                      (let ((__tmp304067
                                             (let ((__tmp304078
                                                    (let ((__tmp304079
                                                           (let ((__tmp304080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp304081
                                 (let ((__tmp304082
                                        (let ((__tmp304083
                                               (let ((__tmp304084
                                                      (let ((__tmp304085
                                                             (let ((__tmp304086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp304086 '()))))
                (declare (not safe))
                (cons 'force-output __tmp304085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp304084 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp304083))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp304082))))
                            (declare (not safe))
                            (cons __tmp304081 '()))))
                     (declare (not safe))
                     (cons 'void __tmp304080))))
              (declare (not safe))
              (cons 'with-catch __tmp304079)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp304068
                                                    (let ((__tmp304069
                                                           (let ((__tmp304070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp304071
                                 (let ((__tmp304072
                                        (let ((__tmp304073
                                               (let ((__tmp304074
                                                      (let ((__tmp304075
                                                             (let ((__tmp304076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp304077
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp304077 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp304076))))
                (declare (not safe))
                (cons __tmp304075 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp304074))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp304073))))
                                   (declare (not safe))
                                   (cons __tmp304072 '()))))
                            (declare (not safe))
                            (cons 'void __tmp304071))))
                     (declare (not safe))
                     (cons 'with-catch __tmp304070))))
              (declare (not safe))
              (cons __tmp304069 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp304078
                                                     __tmp304068))))
                                        (declare (not safe))
                                        (cons '() __tmp304067))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp304066))))
                          (declare (not safe))
                          (cons __tmp304065 '()))))
                   (declare (not safe))
                   (cons __tmp304087 __tmp304064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp304063))))
                                             (declare (not safe))
                                             (cons __tmp304062 '()))))
                                      (declare (not safe))
                                      (cons __tmp304099 __tmp304061))))
                               (declare (not safe))
                               (cons 'define __tmp304060)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts299197_
                  (lambda (_libgerbil299304_)
                    (call-with-input-file
                     (string-append _libgerbil299304_ '".ldd")
                     read)))
                 (_replace-extension299198_
                  (lambda (_path299301_ _ext299302_)
                    (string-append
                     (path-strip-extension _path299301_)
                     _ext299302_)))
                 (_not-exclude-module?299199_
                  (lambda (_ctx299297_)
                    (let ((_id-str299299_
                           (symbol->string
                            (##structure-ref
                             _ctx299297_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp304101
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str299299_))))
                            (declare (not safe))
                            (not __tmp304101))
                          (let ((__tmp304100
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str299299_))))
                            (declare (not safe))
                            (not __tmp304100))
                          '#f))))
                 (_not-file-empty?299200_
                  (lambda (_path299295_)
                    (let ((__tmp304102
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path299295_))))
                      (declare (not safe))
                      (not __tmp304102))))
                 (_compile-stub299201_
                  (lambda (_output-scm299208_ _output-bin299209_)
                    (let* ((_gerbil-home299211_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir299213_
                            (path-expand '"lib" _gerbil-home299211_))
                           (_gerbil-staticdir299215_
                            (path-expand '"static" _gerbil-libdir299213_))
                           (_gxlink299217_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir299213_))
                           (_tmp299219_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path299223_
                            (lambda (_f299221_)
                              (path-expand
                               (path-strip-directory _f299221_)
                               _tmp299219_)))
                           (_deps299225_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx299193_)))
                           (_deps299227_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?299199_
                                      _deps299225_)))
                           (_src-deps-scm299229_
                            (map gxc#find-static-module-file _deps299227_))
                           (_src-deps-scm299231_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?299200_
                                      _src-deps-scm299229_)))
                           (_src-deps-scm299233_
                            (map path-expand _src-deps-scm299231_))
                           (_deps-scm299235_
                            (map _tmp-path299223_ _src-deps-scm299233_))
                           (_deps-c299241_
                            (map (lambda (_g299236299238_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension299198_
                                      _g299236299238_
                                      '".c")))
                                 _deps-scm299235_))
                           (_deps-o299247_
                            (map (lambda (_g299242299244_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension299198_
                                      _g299242299244_
                                      '".o")))
                                 _deps-scm299235_))
                           (_src-bin-scm299249_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx299193_)))
                           (_src-bin-scm299251_
                            (path-expand _src-bin-scm299249_))
                           (_bin-scm299253_
                            (let ()
                              (declare (not safe))
                              (_tmp-path299223_ _src-bin-scm299251_)))
                           (_bin-c299255_
                            (let ()
                              (declare (not safe))
                              (_replace-extension299198_
                               _bin-scm299253_
                               '".c")))
                           (_bin-o299257_
                            (let ()
                              (declare (not safe))
                              (_replace-extension299198_
                               _bin-scm299253_
                               '".o")))
                           (_output-bin299259_
                            (path-expand _output-bin299209_))
                           (_output-scm299261_
                            (path-expand _output-scm299208_))
                           (_output-c299263_
                            (let ()
                              (declare (not safe))
                              (_replace-extension299198_
                               _output-scm299261_
                               '".c")))
                           (_output-o299265_
                            (let ()
                              (declare (not safe))
                              (_replace-extension299198_
                               _output-scm299261_
                               '".o")))
                           (_output_-c299267_
                            (let ()
                              (declare (not safe))
                              (_replace-extension299198_
                               _output-scm299261_
                               '"_.c")))
                           (_output_-o299269_
                            (let ()
                              (declare (not safe))
                              (_replace-extension299198_
                               _output-scm299261_
                               '"_.o")))
                           (_gsc-link-opts299271_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts299273_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts299275_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir299215_)))
                           (_output-ld-opts299277_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a299279_
                            (path-expand '"libgerbil.a" _gerbil-libdir299213_))
                           (_libgerbil.so299281_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir299213_))
                           (_libgerbil-ld-opts299283_
                            (if (file-exists? _libgerbil.so299281_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts299197_
                                   _libgerbil.so299281_))
                                (if (file-exists? _libgerbil.a299279_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts299197_
                                       _libgerbil.a299279_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a299279_
                                       _libgerbil.so299281_)))))
                           (_rpath299285_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir299213_)))
                           (_builtin-modules299289_
                            (map (lambda (_mod299287_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod299287_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx299193_ _deps299227_)))))
                      (let ((__tmp304103
                             (lambda ()
                               (let ((__tmp304104
                                      (path-directory _output-bin299259_)))
                                 (declare (not safe))
                                 (create-directory* __tmp304104)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp304103))
                      (let ((__tmp304105
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub299196_
                                  _builtin-modules299289_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm299261_
                         __tmp304105))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp304106
                                   (lambda () (create-directory _tmp299219_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp304106))
                            (for-each
                             copy-file
                             _src-deps-scm299233_
                             _deps-scm299235_)
                            (copy-file _src-bin-scm299251_ _bin-scm299253_)
                            (let ((__tmp304114
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp304107
                                   (let ((__tmp304108
                                          (let ((__tmp304109
                                                 (let ((__tmp304110
                                                        (let ((__tmp304111
                                                               (let ((__tmp304112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp304113
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm299261_ '()))))
                                (declare (not safe))
                                (cons _bin-scm299253_ __tmp304113))))
                         (declare (not safe))
                         (foldr1 cons __tmp304112 _deps-scm299235_))))
                  (declare (not safe))
                  (foldr1 cons __tmp304111 _gsc-link-opts299271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink299217_
                                                         __tmp304110))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp304109))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp304108))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp304114
                               __tmp304107))
                            (let ((__tmp304122
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp304115
                                   (let ((__tmp304116
                                          (let ((__tmp304117
                                                 (let ((__tmp304118
                                                        (let ((__tmp304119
                                                               (let ((__tmp304120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp304121
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c299267_ '()))))
                                (declare (not safe))
                                (cons _output-c299263_ __tmp304121))))
                         (declare (not safe))
                         (cons _bin-c299255_ __tmp304120))))
                  (declare (not safe))
                  (foldr1 cons __tmp304119 _deps-c299241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp304118
                                                           _gsc-static-opts299275_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp304117
                                                    _gsc-cc-opts299273_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp304116))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp304122
                               __tmp304115))
                            (let ((__tmp304135
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp304123
                                   (let ((__tmp304124
                                          (let ((__tmp304125
                                                 (let ((__tmp304126
                                                        (let ((__tmp304127
                                                               (let ((__tmp304128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp304129
                                     (let ((__tmp304130
                                            (let ((__tmp304131
                                                   (let ((__tmp304132
                                                          (let ((__tmp304133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp304134
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts299283_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp304134))))
                    (declare (not safe))
                    (cons _gerbil-libdir299213_ __tmp304133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp304132))))
                                              (declare (not safe))
                                              (cons _rpath299285_
                                                    __tmp304131))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp304130
                                               _output-ld-opts299277_))))
                                (declare (not safe))
                                (cons _output_-o299269_ __tmp304129))))
                         (declare (not safe))
                         (cons _output-o299265_ __tmp304128))))
                  (declare (not safe))
                  (cons _bin-o299257_ __tmp304127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp304126
                                                           _deps-o299247_))))
                                            (declare (not safe))
                                            (cons _output-bin299259_
                                                  __tmp304125))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp304124))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp304135
                               __tmp304123))
                            (for-each
                             delete-file
                             (let ((__tmp304136
                                    (let ((__tmp304137
                                           (let ((__tmp304138
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o299269_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o299265_
                                                   __tmp304138))))
                                      (declare (not safe))
                                      (cons _output_-c299267_ __tmp304137))))
                               (declare (not safe))
                               (cons _output-c299263_ __tmp304136)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp299219_)))
                          '#!void)))))
          (let* ((_output-bin299203_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx299193_ _opts299194_)))
                 (_output-scm299205_
                  (string-append _output-bin299203_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub299201_ _output-scm299205_ _output-bin299203_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm299205_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx299018_ _opts299019_)
        (letrec ((_reset-declare299021_
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
                 (_generate-stub299022_
                  (lambda (_deps299184_)
                    (let ((_mod-main299186_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx299018_ 'main)))
                          (_reset-decl299187_
                           (let ()
                             (declare (not safe))
                             (_reset-declare299021_)))
                          (_user-decl299188_
                           (let ()
                             (declare (not safe))
                             (_user-declare299023_))))
                      (for-each
                       (lambda (_dep299190_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl299187_)
                         (newline)
                         (if _user-decl299188_
                             (begin (write _user-decl299188_) (newline))
                             '#!void)
                         (write (let ((__tmp304139
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep299190_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp304139)))
                         (newline))
                       _deps299184_)
                      (write (let ((__tmp304140
                                    (let ((__tmp304153
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp304141
                                           (let ((__tmp304149
                                                  (let ((__tmp304150
                                                         (let ((__tmp304151
                                                                (let ((__tmp304152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp304152))))
                   (declare (not safe))
                   (cons __tmp304151 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp304150)))
                                                 (__tmp304142
                                                  (let ((__tmp304143
                                                         (let ((__tmp304144
                                                                (let ((__tmp304145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp304146
                                      (let ((__tmp304147
                                             (let ((__tmp304148
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp304148 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp304147))))
                                 (declare (not safe))
                                 (cons __tmp304146 '()))))
                          (declare (not safe))
                          (cons _mod-main299186_ __tmp304145))))
                   (declare (not safe))
                   (cons 'apply __tmp304144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp304143 '()))))
                                             (declare (not safe))
                                             (cons __tmp304149 __tmp304142))))
                                      (declare (not safe))
                                      (cons __tmp304153 __tmp304141))))
                               (declare (not safe))
                               (cons 'define __tmp304140)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare299023_
                  (lambda ()
                    (let* ((_gsc-opts299089_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts299019_)))
                           (_gsc-prelude299091_
                            (if _gsc-opts299089_
                                (member '"-prelude" _gsc-opts299089_)
                                '#f))
                           (_gsc-prelude299093_
                            (if _gsc-prelude299091_
                                (read (open-input-string
                                       (cadr _gsc-prelude299091_)))
                                '#f)))
                      (let _lp299096_ ((_rest299098_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude299093_ '())))
                                       (_user-decls299099_ '()))
                        (let* ((_rest299100299108_ _rest299098_)
                               (_else299102299116_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls299099_))
                                      '#f
                                      (let ((__tmp304154
                                             (reverse _user-decls299099_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp304154)))))
                               (_K299104299172_
                                (lambda (_rest299119_ _expr299120_)
                                  (let* ((_expr299121299133_ _expr299120_)
                                         (_else299124299141_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp299096_
                                               _rest299119_
                                               _user-decls299099_)))))
                                    (let ((_K299129299162_
                                           (lambda (_decls299160_)
                                             (let ((__tmp304155
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls299099_
                                                              _decls299160_))))
                                               (declare (not safe))
                                               (_lp299096_
                                                _rest299119_
                                                __tmp304155))))
                                          (_K299126299147_
                                           (lambda (_exprs299145_)
                                             (let ((__tmp304156
                                                    (append _exprs299145_
                                                            _rest299119_)))
                                               (declare (not safe))
                                               (_lp299096_
                                                __tmp304156
                                                _user-decls299099_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr299121299133_))
                                          (let ((_tl299131299167_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr299121299133_)))
                                                (_hd299130299165_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr299121299133_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd299130299165_
                                                         'declare))
                                                (let ((_decls299170_
                                                       _tl299131299167_))
                                                  (declare (not safe))
                                                  (_K299129299162_
                                                   _decls299170_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd299130299165_
                                                             'begin))
                                                    (let ((_exprs299155_
                                                           _tl299131299167_))
                                                      (declare (not safe))
                                                      (_K299126299147_
                                                       _exprs299155_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else299124299141_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else299124299141_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest299100299108_))
                              (let ((_hd299105299175_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest299100299108_)))
                                    (_tl299106299177_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest299100299108_))))
                                (let* ((_expr299180_ _hd299105299175_)
                                       (_rest299182_ _tl299106299177_))
                                  (declare (not safe))
                                  (_K299104299172_ _rest299182_ _expr299180_)))
                              (let ()
                                (declare (not safe))
                                (_else299102299116_))))))))
                 (_compile-stub299024_
                  (lambda (_output-scm299031_ _output-bin299032_)
                    (let* ((_gerbil-home299034_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir299036_
                            (path-expand '"lib" _gerbil-home299034_))
                           (_runtime299038_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp299040_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home299034_))
                           (_include-gambit-sharp299042_
                            (string-append
                             '"(include \""
                             _gambit-sharp299040_
                             '"\")"))
                           (_bin-scm299044_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx299018_)))
                           (_deps299046_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx299018_)))
                           (_deps299048_
                            (map gxc#find-static-module-file _deps299046_))
                           (_deps299053_
                            (let ((__tmp304157
                                   (lambda (_$obj299050_)
                                     (let ((__tmp304158
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj299050_))))
                                       (declare (not safe))
                                       (not __tmp304158)))))
                              (declare (not safe))
                              (filter __tmp304157 _deps299048_)))
                           (_deps299057_
                            (let ((__tmp304159
                                   (lambda (_f299055_)
                                     (let ((__tmp304160
                                            (member _f299055_
                                                    _runtime299038_)))
                                       (declare (not safe))
                                       (not __tmp304160)))))
                              (declare (not safe))
                              (filter __tmp304159 _deps299053_)))
                           (_output-base299059_
                            (string-append
                             (path-strip-extension _output-scm299031_)))
                           (_output-c299061_
                            (string-append _output-base299059_ '".c"))
                           (_output-o299063_
                            (string-append _output-base299059_ '".o"))
                           (_output-c_299065_
                            (string-append _output-base299059_ '"_.c"))
                           (_output-o_299067_
                            (string-append _output-base299059_ '"_.o"))
                           (_gsc-link-opts299069_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts299071_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts299073_
                            (let ((__tmp304161
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir299036_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp304161)))
                           (_output-ld-opts299075_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros299077_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp304163
                                       (let ((__tmp304164
                                              (let ((__tmp304165
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp299042_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp304165))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp304164))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp304163))
                                (let ((__tmp304162
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp299042_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp304162))))
                           (_gsc-link-opts299079_
                            (append _gsc-link-opts299069_
                                    _gsc-gx-macros299077_))
                           (_rpath299081_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir299036_)))
                           (_default-ld-options299083_
                            (let ((__tmp304166
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp304166))))
                      (let ((__tmp304167
                             (lambda ()
                               (let ((__tmp304168
                                      (path-directory _output-bin299032_)))
                                 (declare (not safe))
                                 (create-directory* __tmp304168)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp304167))
                      (let ((__tmp304169
                             (lambda ()
                               (let ((__tmp304170
                                      (let ((__tmp304171
                                             (let ((__tmp304172
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm299044_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp304172
                                                       _deps299057_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp304171
                                                _runtime299038_))))
                                 (declare (not safe))
                                 (_generate-stub299022_ __tmp304170)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm299031_
                         __tmp304169))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp304178
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp304173
                                   (let ((__tmp304174
                                          (let ((__tmp304175
                                                 (let ((__tmp304176
                                                        (let ((__tmp304177
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm299031_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp304177 _gsc-link-opts299079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_299065_
                                                         __tmp304176))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp304175))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp304174))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp304178
                               __tmp304173))
                            (let ((__tmp304184
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp304179
                                   (let ((__tmp304180
                                          (let ((__tmp304181
                                                 (let ((__tmp304182
                                                        (let ((__tmp304183
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_299065_ '()))))
                  (declare (not safe))
                  (cons _output-c299061_ __tmp304183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp304182
                                                           _gsc-static-opts299073_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp304181
                                                    _gsc-cc-opts299071_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp304180))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp304184
                               __tmp304179))
                            (let ((__tmp304194
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp304185
                                   (let ((__tmp304186
                                          (let ((__tmp304187
                                                 (let ((__tmp304188
                                                        (let ((__tmp304189
                                                               (let ((__tmp304190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp304191
                                     (let ((__tmp304192
                                            (let ((__tmp304193
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options299083_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir299036_
                                                    __tmp304193))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp304192))))
                                (declare (not safe))
                                (cons _rpath299081_ __tmp304191))))
                         (declare (not safe))
                         (foldr1 cons __tmp304190 _output-ld-opts299075_))))
                  (declare (not safe))
                  (cons _output-o_299067_ __tmp304189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o299063_
                                                         __tmp304188))))
                                            (declare (not safe))
                                            (cons _output-bin299032_
                                                  __tmp304187))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp304186))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp304194
                               __tmp304185)))
                          '#!void)))))
          (let* ((_output-bin299026_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx299018_ _opts299019_)))
                 (_output-scm299028_
                  (string-append _output-bin299026_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub299024_ _output-scm299028_ _output-bin299026_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm299028_))))))
    (define gxc#find-export-binding
      (lambda (_ctx298968_ _id298969_)
        (let ((_$e299015_
               (let ((__tmp304196
                      (lambda (_e298970298972_)
                        (let* ((_g298974298984_ _e298970298972_)
                               (_else298976298992_ (lambda () '#f))
                               (_K298978298996_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g298974298984_
                                 'gx#module-export::t))
                              (let* ((_e298979298999_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g298974298984_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e298980299002_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g298974298984_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e298981299005_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g298974298984_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e298981299005_ '0))
                                    (let ((_e298982299008_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g298974298984_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g299010299012_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g299010299012_
                                                    _id298969_)))
                                           _e298982299008_)
                                          (let ()
                                            (declare (not safe))
                                            (_K298978298996_))
                                          (let ()
                                            (declare (not safe))
                                            (_else298976298992_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else298976298992_))))
                              (let ()
                                (declare (not safe))
                                (_else298976298992_))))))
                     (__tmp304195
                      (##structure-ref
                       _ctx298968_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp304196 __tmp304195))))
          (if _$e299015_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e299015_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx298960_ _id298961_)
        (let ((_$e298963_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx298960_ _id298961_))))
          (if _$e298963_
              ((lambda (_bind298966_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind298966_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id298961_)))
                 (##structure-ref _bind298966_ '1 gx#binding::t '#f))
               _$e298963_)
              (let ((__tmp304197
                     (##structure-ref
                      _ctx298960_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp304197
                 _id298961_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx298847_)
        (letrec* ((_ht298849_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template298850_
                   (lambda (_in298912_ _phi298913_)
                     (let ((_iphi298915_
                            (fx+ _phi298913_
                                 (##direct-structure-ref
                                  _in298912_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports298916_
                            (##structure-ref
                             (##direct-structure-ref
                              _in298912_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp298918_ ((_rest298920_ _imports298916_)
                                        (_r298921_ '()))
                         (let* ((_rest298922298930_ _rest298920_)
                                (_else298924298938_ (lambda () _r298921_))
                                (_K298926298948_
                                 (lambda (_rest298941_ _in298942_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in298942_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi298915_))
                                           (let ((__tmp304204
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in298942_
                                                          _r298921_))))
                                             (declare (not safe))
                                             (_lp298918_
                                              _rest298941_
                                              __tmp304204))
                                           (let ()
                                             (declare (not safe))
                                             (_lp298918_
                                              _rest298941_
                                              _r298921_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in298942_
                                              'gx#module-import::t))
                                           (let ((_iphi298944_
                                                  (fx+ _phi298913_
                                                       (##direct-structure-ref
                                                        _in298942_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi298944_))
                                                 (let ((__tmp304202
                                                        (let ((__tmp304203
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in298942_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp304203 _r298921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp298918_
                                                    _rest298941_
                                                    __tmp304202))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp298918_
                                                    _rest298941_
                                                    _r298921_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in298942_
                                                  'gx#import-set::t))
                                               (let ((_xphi298946_
                                                      (fx+ _iphi298915_
                                                           (##direct-structure-ref
                                                            _in298942_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi298946_))
                                                     (let ((__tmp304200
                                                            (let ((__tmp304201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in298942_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp304201 _r298921_))))
               (declare (not safe))
               (_lp298918_ _rest298941_ __tmp304200))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi298946_)
                                                         (let ((__tmp304198
                                                                (let ((__tmp304199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template298850_
                                  _in298942_
                                  _iphi298915_))))
                          (declare (not safe))
                          (foldl1 cons _r298921_ __tmp304199))))
                   (declare (not safe))
                   (_lp298918_ _rest298941_ __tmp304198))
                 (let ()
                   (declare (not safe))
                   (_lp298918_ _rest298941_ _r298921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp298918_
                                                  _rest298941_
                                                  _r298921_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest298922298930_))
                               (let ((_hd298927298951_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest298922298930_)))
                                     (_tl298928298953_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest298922298930_))))
                                 (let* ((_in298956_ _hd298927298951_)
                                        (_rest298958_ _tl298928298953_))
                                   (declare (not safe))
                                   (_K298926298948_ _rest298958_ _in298956_)))
                               (let ()
                                 (declare (not safe))
                                 (_else298924298938_))))))))
                  (_find-deps298851_
                   (lambda (_rest298858_ _deps298859_)
                     (let* ((_rest298860298868_ _rest298858_)
                            (_else298862298876_ (lambda () _deps298859_))
                            (_K298864298900_
                             (lambda (_rest298879_ _hd298880_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd298880_
                                      'gx#module-context::t))
                                   (let ((_id298882_
                                          (##structure-ref
                                           _hd298880_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports298883_
                                          (##structure-ref
                                           _hd298880_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht298849_
                                            _id298882_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps298851_
                                            _rest298879_
                                            _deps298859_))
                                         (let ((_$e298885_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd298880_))))
                                           (if _$e298885_
                                               ((lambda (_pre298888_)
                                                  (let ((_xdeps298890_
                                                         (let ((__tmp304217
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre298888_ _imports298883_))))
                   (declare (not safe))
                   (_find-deps298851_ __tmp304217 _deps298859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht298849_
                                                       _id298882_
                                                       _hd298880_))
                                                    (let ((__tmp304218
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd298880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps298890_))))
              (declare (not safe))
              (_find-deps298851_ _rest298879_ __tmp304218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e298885_)
                                               (let ((_xdeps298892_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps298851_
                                                         _imports298883_
                                                         _deps298859_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht298849_
                                                    _id298882_
                                                    _hd298880_))
                                                 (let ((__tmp304216
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd298880_
                                                                _xdeps298892_))))
                                                   (declare (not safe))
                                                   (_find-deps298851_
                                                    _rest298879_
                                                    __tmp304216)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd298880_
                                          'gx#prelude-context::t))
                                       (let ((_id298894_
                                              (##structure-ref
                                               _hd298880_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht298849_
                                                _id298894_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps298851_
                                                _rest298879_
                                                _deps298859_))
                                             (let ((_xdeps298896_
                                                    (let ((__tmp304214
                                                           (##structure-ref
                                                            _hd298880_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps298851_
                                                       __tmp304214
                                                       _deps298859_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht298849_
                                                      _id298894_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps298851_
                                                      _rest298879_
                                                      _xdeps298896_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht298849_
                                                        _id298894_
                                                        _hd298880_))
                                                     (let ((__tmp304215
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd298880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps298896_))))
               (declare (not safe))
               (_find-deps298851_ _rest298879_ __tmp304215)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd298880_
                                              'gx#module-import::t))
                                           (if (let ((__tmp304213
                                                      (##direct-structure-ref
                                                       _hd298880_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp304213))
                                               (let ((__tmp304211
                                                      (let ((__tmp304212
                                                             (##direct-structure-ref
                                                              _hd298880_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp304212
                                                              _rest298879_))))
                                                 (declare (not safe))
                                                 (_find-deps298851_
                                                  __tmp304211
                                                  _deps298859_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps298851_
                                                  _rest298879_
                                                  _deps298859_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd298880_
                                                  'gx#module-export::t))
                                               (let ((__tmp304209
                                                      (let ((__tmp304210
                                                             (##direct-structure-ref
                                                              _hd298880_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp304210
                                                              _rest298879_))))
                                                 (declare (not safe))
                                                 (_find-deps298851_
                                                  __tmp304209
                                                  _deps298859_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd298880_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp304208
                                                              (##direct-structure-ref
                                                               _hd298880_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp304208))
                                                       (let ((__tmp304206
                                                              (let ((__tmp304207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd298880_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp304207 _rest298879_))))
                 (declare (not safe))
                 (_find-deps298851_ __tmp304206 _deps298859_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd298880_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps298898_
                           (let ()
                             (declare (not safe))
                             (_import-set-template298850_ _hd298880_ '0)))
                          (__tmp304205
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest298879_ _xdeps298898_))))
                     (declare (not safe))
                     (_find-deps298851_ __tmp304205 _deps298859_))
                   (let ()
                     (declare (not safe))
                     (_find-deps298851_ _rest298879_ _deps298859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd298880_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest298860298868_))
                           (let ((_hd298865298903_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest298860298868_)))
                                 (_tl298866298905_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest298860298868_))))
                             (let* ((_hd298908_ _hd298865298903_)
                                    (_rest298910_ _tl298866298905_))
                               (declare (not safe))
                               (_K298864298900_ _rest298910_ _hd298908_)))
                           (let ()
                             (declare (not safe))
                             (_else298862298876_)))))))
          (reverse (let ((__tmp304219
                          (let ((__tmp304220
                                 (let ((_$e298853_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx298847_))))
                                   (if _$e298853_
                                       ((lambda (_pre298856_)
                                          (let ((__tmp304221
                                                 (##structure-ref
                                                  _ctx298847_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre298856_ __tmp304221)))
                                        _$e298853_)
                                       (##structure-ref
                                        _ctx298847_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps298851_ __tmp304220 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp304219))))))
    (define gxc#find-static-module-file
      (lambda (_ctx298778_)
        (let* ((_context-id298780_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx298778_
                       'gx#module-context::t))
                    (##structure-ref _ctx298778_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx298778_)))
               (_scm298782_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id298780_))
                 '".scm"))
               (_dirs298784_ (gx#current-expander-module-library-path))
               (_dirs298790_
                (let ((_user-libpath298786_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath298786_
                      (let ((_user-libpath298788_
                             (path-expand '"lib" _user-libpath298786_)))
                        (if (member _user-libpath298788_ _dirs298784_)
                            _dirs298784_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath298788_ _dirs298784_))))
                      _dirs298784_)))
               (_dirs298799_
                (let ((_$e298792_ (gxc#current-compile-output-dir)))
                  (if _$e298792_
                      ((lambda (_g298794298796_)
                         (let ()
                           (declare (not safe))
                           (cons _g298794298796_ _dirs298790_)))
                       _$e298792_)
                      _dirs298790_)))
               (_dirs298805_
                (map (lambda (_g298800298802_)
                       (path-expand '"static" _g298800298802_))
                     _dirs298799_)))
          (let _lp298808_ ((_rest298810_ _dirs298805_))
            (let* ((_rest298811298819_ _rest298810_)
                   (_else298813298827_
                    (lambda ()
                      (let ((__tmp304222
                             (##structure-ref
                              _ctx298778_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp304222
                         _scm298782_))))
                   (_K298815298835_
                    (lambda (_rest298830_ _dir298831_)
                      (let ((_path298833_
                             (path-expand _scm298782_ _dir298831_)))
                        (if (file-exists? _path298833_)
                            _path298833_
                            (let ()
                              (declare (not safe))
                              (_lp298808_ _rest298830_)))))))
              (if (let () (declare (not safe)) (##pair? _rest298811298819_))
                  (let ((_hd298816298838_
                         (let ()
                           (declare (not safe))
                           (##car _rest298811298819_)))
                        (_tl298817298840_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest298811298819_))))
                    (let* ((_dir298843_ _hd298816298838_)
                           (_rest298845_ _tl298817298840_))
                      (declare (not safe))
                      (_K298815298835_ _rest298845_ _dir298843_)))
                  (let () (declare (not safe)) (_else298813298827_))))))))
    (define gxc#file-empty?
      (lambda (_path298776_)
        (let ((__tmp304223 (file-info-size (file-info _path298776_ '#t))))
          (declare (not safe))
          (zero? __tmp304223))))
    (define gxc#compile-top-module
      (lambda (_ctx298765_)
        (let ((__tmp304227
               (lambda ()
                 (let ((__tmp304228
                        (##structure-ref
                         _ctx298765_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp304228))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp304229
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx298765_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp304229))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx298765_))
                 (if (let ((__tmp304232
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx298765_))))
                       (declare (not safe))
                       (null? __tmp304232))
                     (let* ((_thr1298770_
                             (let ((__tmp304230
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx298765_)))))
                               (declare (not safe))
                               (spawn __tmp304230)))
                            (_thr2298773_
                             (let ((__tmp304231
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx298765_)))))
                               (declare (not safe))
                               (spawn __tmp304231))))
                       (let () (declare (not safe)) (gxc#join! _thr1298770_))
                       (let () (declare (not safe)) (gxc#join! _thr2298773_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx298765_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx298765_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx298765_))
                     '#!void)))
              (__tmp304226
               (let ((__obj304031
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj304031)
                 __obj304031))
              (__tmp304225
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp304224 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp304227
           gx#current-expander-context
           _ctx298765_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp304226
           gxc#current-compile-runtime-sections
           __tmp304225
           gxc#current-compile-runtime-names
           __tmp304224))))
    (define gxc#collect-bindings
      (lambda (_ctx298763_)
        (let ((__tmp304233
               (##structure-ref _ctx298763_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp304233))))
    (define gxc#compile-runtime-code
      (lambda (_ctx298709_)
        (letrec ((_compile1298711_
                  (lambda (_ctx298752_)
                    (let* ((_code298754_
                            (##structure-ref
                             _ctx298752_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt298758_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code298754_))
                                (let ((_idstr298756_
                                       (let ((__tmp304234
                                              (##structure-ref
                                               _ctx298752_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp304234))))
                                  (string-append _idstr298756_ '"__0"))
                                '#f)))
                      (if _rt298758_
                          (begin
                            (let ((__tmp304235
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp304235 _ctx298752_ _rt298758_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code298713_
                               _ctx298752_
                               _code298754_)))
                          (let ((_path298761_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx298752_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path298761_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code298714_
                         _ctx298752_
                         _code298754_
                         _rt298758_)))))
                 (_context-timestamp298712_
                  (lambda (_ctx298750_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx298750_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code298713_
                  (lambda (_ctx298732_ _code298733_)
                    (let* ((_lifts298735_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code298738_
                            (let ((__tmp304238
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code298733_))))
                                  (__tmp304237
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp304236
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp304238
                               gx#current-expander-context
                               _ctx298732_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts298735_
                               gxc#current-compile-marks
                               __tmp304237
                               gxc#current-compile-identifiers
                               __tmp304236)))
                           (_runtime-code298740_
                            (if (let ((__tmp304242 (unbox _lifts298735_)))
                                  (declare (not safe))
                                  (null? __tmp304242))
                                _runtime-code298738_
                                (let ((__tmp304239
                                       (let ((__tmp304241
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code298738_
                                                      '())))
                                             (__tmp304240
                                              (reverse (unbox _lifts298735_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp304241
                                                 __tmp304240))))
                                  (declare (not safe))
                                  (cons 'begin __tmp304239))))
                           (_runtime-code298742_
                            (let ((__tmp304243
                                   (let ((__tmp304245
                                          (let ((__tmp304246
                                                 (let ((__tmp304249
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp298712_
                                                           _ctx298732_)))
                                                       (__tmp304247
                                                        (let ((__tmp304248
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp304248
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp304249
                                                         __tmp304247))))
                                            (declare (not safe))
                                            (cons 'define __tmp304246)))
                                         (__tmp304244
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code298740_ '()))))
                                     (declare (not safe))
                                     (cons __tmp304245 __tmp304244))))
                              (declare (not safe))
                              (cons 'begin __tmp304243)))
                           (_scm0298744_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx298732_
                               '0
                               '".scm"))))
                      (let ((_scms298747_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx298732_))))
                        (let ((__tmp304250
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0298744_
                                    _runtime-code298742_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp304250
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms298747_)
                            (delete-file _scms298747_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0298744_
                           '" => "
                           _scms298747_))
                        (copy-file _scm0298744_ _scms298747_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0298744_))))))
                 (_generate-loader-code298714_
                  (lambda (_ctx298721_ _code298722_ _rt298723_)
                    (let* ((_loader-code298726_
                            (let ((__tmp304251
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code298722_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp304251
                               gx#current-expander-context
                               _ctx298721_)))
                           (_loader-code298728_
                            (if _rt298723_
                                (let ((__tmp304252
                                       (let ((__tmp304253
                                              (let ((__tmp304254
                                                     (let ((__tmp304255
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt298723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp304255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304254 '()))))
                                         (declare (not safe))
                                         (cons _loader-code298726_
                                               __tmp304253))))
                                  (declare (not safe))
                                  (cons 'begin __tmp304252))
                                _loader-code298726_)))
                      (let ((__tmp304256
                             (lambda ()
                               (let ((__tmp304257
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx298721_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp304257
                                  _loader-code298728_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp304256
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules298716_
                 (let ((__tmp304258
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx298709_))))
                   (declare (not safe))
                   (cons _ctx298709_ __tmp304258))))
            (for-each
             (lambda (_ctx298718_)
               (let ((__tmp304259
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1298711_ _ctx298718_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp304259
                  gxc#current-compile-decls
                  '())))
             _all-modules298716_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx298606_)
        (letrec ((_compile-ssi298608_
                  (lambda (_code298679_)
                    (let* ((_path298681_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx298606_
                               '#f
                               '".ssi")))
                           (_prelude298692_
                            (let* ((_super298683_
                                    (##structure-ref
                                     _ctx298606_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e298685_
                                    (##structure-ref
                                     _super298683_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e298685_
                                  ((lambda (_g298687298689_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g298687298689_)))
                                   _$e298685_)
                                  ':<root>)))
                           (_ns298694_
                            (##structure-ref
                             _ctx298606_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr298696_
                            (symbol->string
                             (##structure-ref
                              _ctx298606_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg298703_
                            (let ((_$e298698_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr298696_ '#\/))))
                              (if _$e298698_
                                  ((lambda (_x298701_)
                                     (string->symbol
                                      (substring _idstr298696_ '0 _x298701_)))
                                   _$e298698_)
                                  '#f)))
                           (_rt298705_
                            (let ((__tmp304260
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp304260 _ctx298606_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path298681_))
                      (let ((__tmp304261
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude298692_))
                               (if _pkg298703_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg298703_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns298694_))
                               (newline)
                               (pretty-print _code298679_)
                               (if _rt298705_
                                   (pretty-print
                                    (let ((__tmp304262
                                           (let ((__tmp304266
                                                  (let ((__tmp304267
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp304267)))
                                                 (__tmp304263
                                                  (let ((__tmp304264
                                                         (let ((__tmp304265
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt298705_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp304265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp304264 '()))))
                                             (declare (not safe))
                                             (cons __tmp304266 __tmp304263))))
                                      (declare (not safe))
                                      (cons '%#call __tmp304262)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path298681_
                         __tmp304261)))))
                 (_compile-phi298609_
                  (lambda (_part298619_)
                    (let* ((_part298620298633_ _part298619_)
                           (_E298622298637_
                            (lambda ()
                              (error '"No clause matching"
                                     _part298620298633_)))
                           (_K298623298648_
                            (lambda (_code298640_
                                     _n298641_
                                     _phi298642_
                                     _phi-ctx298643_)
                              (let* ((_code298646_
                                      (let ((__tmp304268
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code298640_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp304268
                                         gx#current-expander-context
                                         _phi-ctx298643_
                                         gx#current-expander-phi
                                         _phi298642_)))
                                     (__tmp304269
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx298606_
                                         _n298641_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp304269
                                 _code298646_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part298620298633_))
                          (let ((_hd298624298651_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part298620298633_)))
                                (_tl298625298653_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part298620298633_))))
                            (let ((_phi-ctx298656_ _hd298624298651_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl298625298653_))
                                  (let ((_hd298626298658_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl298625298653_)))
                                        (_tl298627298660_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl298625298653_))))
                                    (let ((_phi298663_ _hd298626298658_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl298627298660_))
                                          (let ((_hd298628298665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl298627298660_)))
                                                (_tl298629298667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl298627298660_))))
                                            (let ((_n298670_ _hd298628298665_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl298629298667_))
                                                  (let ((_hd298630298672_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl298629298667_)))
                                                        (_tl298631298674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl298629298667_))))
                                                    (let ((_code298677_
                                                           _hd298630298672_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl298631298674_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K298623298648_
                                                             _code298677_
                                                             _n298670_
                                                             _phi298663_
                                                             _phi-ctx298656_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E298622298637_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E298622298637_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E298622298637_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E298622298637_)))))
                          (let () (declare (not safe)) (_E298622298637_)))))))
          (let ((_g304270_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx298606_))))
            (begin
              (let ((_g304271_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g304270_)
                           (##vector-length _g304270_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g304271_ 2)))
                    (error "Context expects 2 values" _g304271_)))
              (let ((_ssi-code298611_
                     (let () (declare (not safe)) (##vector-ref _g304270_ 0)))
                    (_phi-code298612_
                     (let () (declare (not safe)) (##vector-ref _g304270_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi298608_ _ssi-code298611_))
                  (let ((_threads298617_
                         (map (lambda (_code298614_)
                                (let ((__tmp304272
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi298609_
                                            _code298614_)))))
                                  (declare (not safe))
                                  (spawn __tmp304272)))
                              _phi-code298612_)))
                    (for-each gxc#join! _threads298617_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx298589_)
        (let* ((_path298591_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx298589_ '#f '".ssxi.ss")))
               (_code298593_
                (let ((__tmp304273
                       (##structure-ref
                        _ctx298589_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp304273)))
               (_idstr298595_
                (symbol->string
                 (##structure-ref _ctx298589_ '1 gx#expander-context::t '#f)))
               (_pkg298602_
                (let ((_$e298597_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr298595_ '#\/))))
                  (if _$e298597_
                      ((lambda (_x298600_)
                         (string->symbol
                          (substring _idstr298595_ '0 _x298600_)))
                       _$e298597_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path298591_))
          (let ((__tmp304274
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg298602_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg298602_))
                       '#!void)
                   (newline)
                   (pretty-print _code298593_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path298591_ __tmp304274)))))
    (define gxc#generate-meta-code
      (lambda (_ctx298582_)
        (let* ((_state298584_
                (let ((__obj304032
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj304032 _ctx298582_)
                  __obj304032))
               (_ssi-code298586_
                (let ((__tmp304275
                       (##structure-ref
                        _ctx298582_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp304275 _state298584_))))
          (values _ssi-code298586_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state298584_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx298575_)
        (let ((_lifts298577_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp304278
                 (lambda ()
                   (let ((_code298580_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx298575_))))
                     (if (let ((__tmp304282 (unbox _lifts298577_)))
                           (declare (not safe))
                           (null? __tmp304282))
                         _code298580_
                         (let ((__tmp304279
                                (let ((__tmp304281
                                       (let ()
                                         (declare (not safe))
                                         (cons _code298580_ '())))
                                      (__tmp304280
                                       (reverse (unbox _lifts298577_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp304281 __tmp304280))))
                           (declare (not safe))
                           (cons 'begin __tmp304279))))))
                (__tmp304277
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp304276
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp304278
             gxc#current-compile-lift
             _lifts298577_
             gxc#current-compile-marks
             __tmp304277
             gxc#current-compile-identifiers
             __tmp304276)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx298571_)
        (let ((_modules298573_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp304283
                 (##structure-ref _ctx298571_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp304283 _modules298573_))
          (reverse (unbox _modules298573_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path298554_ _code298555_ _phi?298556_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path298554_))
        (let ((__tmp304284
               (lambda ()
                 (pretty-print
                  (let ((__tmp304285
                         (let ((__tmp304292
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp304286
                                (let ((__tmp304291
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp304287
                                       (let ((__tmp304290
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp304288
                                              (let ((__tmp304289
                                                     (if _phi?298556_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp304289))))
                                         (declare (not safe))
                                         (cons __tmp304290 __tmp304288))))
                                  (declare (not safe))
                                  (cons __tmp304291 __tmp304287))))
                           (declare (not safe))
                           (cons __tmp304292 __tmp304286))))
                    (declare (not safe))
                    (cons 'declare __tmp304285)))
                 (pretty-print _code298555_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path298554_ __tmp304284))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path298554_ _phi?298556_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path298554_))))
    (define gxc#compile-scm-file__0
      (lambda (_path298562_ _code298563_)
        (let ((_phi?298565_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path298562_ _code298563_ _phi?298565_))))
    (define gxc#compile-scm-file
      (lambda _g304294_
        (let ((_g304293_ (let () (declare (not safe)) (##length _g304294_))))
          (cond ((let () (declare (not safe)) (##fx= _g304293_ 2))
                 (apply (lambda (_path298562_ _code298563_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path298562_
                             _code298563_)))
                        _g304294_))
                ((let () (declare (not safe)) (##fx= _g304293_ 3))
                 (apply (lambda (_path298567_ _code298568_ _phi?298569_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path298567_
                             _code298568_
                             _phi?298569_)))
                        _g304294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g304294_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?298455_)
        (let _lp298457_ ((_rest298459_ (gxc#current-compile-gsc-options))
                         (_opts298460_ '()))
          (let* ((_rest298461298481_ _rest298459_)
                 (_else298465298489_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?298455_))
                             (gxc#current-compile-debug))
                        (let ((__tmp304295
                               (let ((__tmp304296 (reverse _opts298460_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp304296))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp304295))
                        (reverse _opts298460_)))))
            (let ((_K298475298532_
                   (lambda (_rest298530_)
                     (let ()
                       (declare (not safe))
                       (_lp298457_ _rest298530_ _opts298460_))))
                  (_K298470298514_
                   (lambda (_rest298512_)
                     (let ()
                       (declare (not safe))
                       (_lp298457_ _rest298512_ _opts298460_))))
                  (_K298467298496_
                   (lambda (_rest298493_ _opt298494_)
                     (let ((__tmp304297
                            (let ()
                              (declare (not safe))
                              (cons _opt298494_ _opts298460_))))
                       (declare (not safe))
                       (_lp298457_ _rest298493_ __tmp304297)))))
              (if (let () (declare (not safe)) (##pair? _rest298461298481_))
                  (let ((_tl298477298537_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest298461298481_)))
                        (_hd298476298535_
                         (let ()
                           (declare (not safe))
                           (##car _rest298461298481_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd298476298535_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl298477298537_))
                            (let* ((_tl298479298540_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl298477298537_)))
                                   (_rest298543_ _tl298479298540_))
                              (declare (not safe))
                              (_K298475298532_ _rest298543_))
                            (let ((_opt298504_ _hd298476298535_)
                                  (_rest298506_ _tl298477298537_))
                              (let ()
                                (declare (not safe))
                                (_K298467298496_ _rest298506_ _opt298504_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd298476298535_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl298477298537_))
                                (let* ((_tl298474298522_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl298477298537_)))
                                       (_rest298525_ _tl298474298522_))
                                  (declare (not safe))
                                  (_K298470298514_ _rest298525_))
                                (let ((_opt298504_ _hd298476298535_)
                                      (_rest298506_ _tl298477298537_))
                                  (let ()
                                    (declare (not safe))
                                    (_K298467298496_
                                     _rest298506_
                                     _opt298504_))))
                            (let ((_opt298504_ _hd298476298535_)
                                  (_rest298506_ _tl298477298537_))
                              (let ()
                                (declare (not safe))
                                (_K298467298496_ _rest298506_ _opt298504_))))))
                  (let () (declare (not safe)) (_else298465298489_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?298549_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?298549_))))
    (define gxc#gsc-link-options
      (lambda _g304299_
        (let ((_g304298_ (let () (declare (not safe)) (##length _g304299_))))
          (cond ((let () (declare (not safe)) (##fx= _g304298_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g304299_))
                ((let () (declare (not safe)) (##fx= _g304298_ 1))
                 (apply (lambda (_phi?298551_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?298551_)))
                        _g304299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g304299_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?298356_)
        (let _lp298358_ ((_rest298360_ (gxc#current-compile-gsc-options))
                         (_opts298361_ '()))
          (let* ((_rest298362298382_ _rest298360_)
                 (_else298366298390_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?298356_))
                             (gxc#current-compile-debug))
                        (let ((__tmp304300
                               (let ((__tmp304301 (reverse _opts298361_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp304301))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp304300))
                        (reverse _opts298361_)))))
            (let ((_K298376298429_
                   (lambda (_rest298426_ _opt298427_)
                     (let ((__tmp304302
                            (let ((__tmp304303
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts298361_))))
                              (declare (not safe))
                              (cons _opt298427_ __tmp304303))))
                       (declare (not safe))
                       (_lp298358_ _rest298426_ __tmp304302))))
                  (_K298371298410_
                   (lambda (_rest298408_)
                     (let ()
                       (declare (not safe))
                       (_lp298358_ _rest298408_ _opts298361_))))
                  (_K298368298396_
                   (lambda (_rest298394_)
                     (let ()
                       (declare (not safe))
                       (_lp298358_ _rest298394_ _opts298361_)))))
              (if (let () (declare (not safe)) (##pair? _rest298362298382_))
                  (let ((_tl298378298434_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest298362298382_)))
                        (_hd298377298432_
                         (let ()
                           (declare (not safe))
                           (##car _rest298362298382_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd298377298432_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl298378298434_))
                            (let ((_tl298380298439_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl298378298434_)))
                                  (_hd298379298437_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl298378298434_))))
                              (let ((_opt298442_ _hd298379298437_)
                                    (_rest298444_ _tl298380298439_))
                                (let ()
                                  (declare (not safe))
                                  (_K298376298429_ _rest298444_ _opt298442_))))
                            (let ((_rest298402_ _tl298378298434_))
                              (declare (not safe))
                              (_K298368298396_ _rest298402_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd298377298432_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl298378298434_))
                                (let* ((_tl298375298418_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl298378298434_)))
                                       (_rest298421_ _tl298375298418_))
                                  (declare (not safe))
                                  (_K298371298410_ _rest298421_))
                                (let ((_rest298402_ _tl298378298434_))
                                  (declare (not safe))
                                  (_K298368298396_ _rest298402_)))
                            (let ((_rest298402_ _tl298378298434_))
                              (declare (not safe))
                              (_K298368298396_ _rest298402_)))))
                  (let () (declare (not safe)) (_else298366298390_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?298450_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?298450_))))
    (define gxc#gsc-cc-options
      (lambda _g304305_
        (let ((_g304304_ (let () (declare (not safe)) (##length _g304305_))))
          (cond ((let () (declare (not safe)) (##fx= _g304304_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g304305_))
                ((let () (declare (not safe)) (##fx= _g304304_ 1))
                 (apply (lambda (_phi?298452_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?298452_)))
                        _g304305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g304305_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir298351_)
        (let* ((_user-staticdir298353_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp304306
                (let ((__tmp304307
                       (string-append
                        '"-I "
                        _staticdir298351_
                        '" -I "
                        _user-staticdir298353_)))
                  (declare (not safe))
                  (cons __tmp304307 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp304306))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp298263_ ((_rest298265_ (gxc#current-compile-gsc-options))
                         (_opts298266_ '()))
          (let* ((_rest298267298287_ _rest298265_)
                 (_else298271298295_ (lambda () _opts298266_)))
            (let ((_K298281298338_
                   (lambda (_rest298336_)
                     (let ()
                       (declare (not safe))
                       (_lp298263_ _rest298336_ _opts298266_))))
                  (_K298276298316_
                   (lambda (_rest298313_ _opt298314_)
                     (let ((__tmp304308
                            (append _opts298266_
                                    (let ((__tmp304309
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt298314_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp304309)))))
                       (declare (not safe))
                       (_lp298263_ _rest298313_ __tmp304308))))
                  (_K298273298301_
                   (lambda (_rest298299_)
                     (let ()
                       (declare (not safe))
                       (_lp298263_ _rest298299_ _opts298266_)))))
              (if (let () (declare (not safe)) (##pair? _rest298267298287_))
                  (let ((_tl298283298343_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest298267298287_)))
                        (_hd298282298341_
                         (let ()
                           (declare (not safe))
                           (##car _rest298267298287_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd298282298341_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl298283298343_))
                            (let* ((_tl298285298346_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl298283298343_)))
                                   (_rest298349_ _tl298285298346_))
                              (declare (not safe))
                              (_K298281298338_ _rest298349_))
                            (let ((_rest298307_ _tl298283298343_))
                              (declare (not safe))
                              (_K298273298301_ _rest298307_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd298282298341_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl298283298343_))
                                (let ((_tl298280298326_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl298283298343_)))
                                      (_hd298279298324_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl298283298343_))))
                                  (let ((_opt298329_ _hd298279298324_)
                                        (_rest298331_ _tl298280298326_))
                                    (let ()
                                      (declare (not safe))
                                      (_K298276298316_
                                       _rest298331_
                                       _opt298329_))))
                                (let ((_rest298307_ _tl298283298343_))
                                  (declare (not safe))
                                  (_K298273298301_ _rest298307_)))
                            (let ((_rest298307_ _tl298283298343_))
                              (declare (not safe))
                              (_K298273298301_ _rest298307_)))))
                  (let () (declare (not safe)) (_else298271298295_))))))))
    (define gxc#not-string-empty?
      (lambda (_str298260_)
        (let ((__tmp304310
               (let () (declare (not safe)) (string-empty? _str298260_))))
          (declare (not safe))
          (not __tmp304310))))
    (define gxc#gsc-compile-file
      (lambda (_path298228_ _phi?298229_)
        (letrec ((_gsc-link-path298231_
                  (lambda (_base-path298252_)
                    (let _lp298254_ ((_n298256_ '1))
                      (let ((_path298258_
                             (string-append
                              _base-path298252_
                              '".o"
                              (number->string _n298256_))))
                        (if (file-exists? _path298258_)
                            (let ((__tmp304311
                                   (let ()
                                     (declare (not safe))
                                     (+ _n298256_ '1))))
                              (declare (not safe))
                              (_lp298254_ __tmp304311))
                            _path298258_))))))
          (let* ((_base-path298233_ (path-strip-extension _path298228_))
                 (_path-c298235_ (string-append _base-path298233_ '".c"))
                 (_path-o298237_ (string-append _base-path298233_ '".o"))
                 (_link-path298239_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path298231_ _base-path298233_)))
                 (_link-path-c298241_ (string-append _link-path298239_ '".c"))
                 (_link-path-o298243_ (string-append _link-path298239_ '".o"))
                 (_gsc-link-opts298245_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?298229_)))
                 (_gsc-cc-opts298247_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?298229_)))
                 (_gcc-ld-opts298249_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp304318 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp304312
                   (let ((__tmp304313
                          (let ((__tmp304314
                                 (let ((__tmp304315
                                        (let ((__tmp304316
                                               (let ((__tmp304317
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path298228_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp304317
                                                         _gsc-link-opts298245_))))
                                          (declare (not safe))
                                          (cons _link-path-c298241_
                                                __tmp304316))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp304315))))
                            (declare (not safe))
                            (cons '"-flat" __tmp304314))))
                     (declare (not safe))
                     (cons '"-link" __tmp304313))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp304318 __tmp304312))
            (let ((__tmp304325 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp304319
                   (let ((__tmp304320
                          (let ((__tmp304321
                                 (let ((__tmp304322
                                        (let ((__tmp304323
                                               (let ((__tmp304324
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c298241_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c298235_
                                                       __tmp304324))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp304323
                                                  _gsc-cc-opts298247_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp304322))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp304321))))
                     (declare (not safe))
                     (cons '"-obj" __tmp304320))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp304325 __tmp304319))
            (let ((__tmp304331 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp304326
                   (let ((__tmp304327
                          (let ((__tmp304328
                                 (let ((__tmp304329
                                        (let ((__tmp304330
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o298243_
                                                       _gcc-ld-opts298249_))))
                                          (declare (not safe))
                                          (cons _path-o298237_ __tmp304330))))
                                   (declare (not safe))
                                   (cons _link-path298239_ __tmp304329))))
                            (declare (not safe))
                            (cons '"-o" __tmp304328))))
                     (declare (not safe))
                     (cons '"-shared" __tmp304327))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp304331
               __tmp304326))
            (for-each
             delete-file
             (let ((__tmp304332
                    (let ((__tmp304333
                           (let ((__tmp304334
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o298243_ '()))))
                             (declare (not safe))
                             (cons _link-path-c298241_ __tmp304334))))
                      (declare (not safe))
                      (cons _path-o298237_ __tmp304333))))
               (declare (not safe))
               (cons _path-c298235_ __tmp304332)))))))
    (define gxc#compile-output-file
      (lambda (_ctx298199_ _n298200_ _ext298201_)
        (letrec ((_module-relative-path298203_
                  (lambda (_ctx298226_)
                    (path-strip-directory
                     (let ((__tmp304335
                            (##structure-ref
                             _ctx298226_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp304335)))))
                 (_module-source-directory298204_
                  (lambda (_ctx298222_)
                    (path-directory
                     (let ((_mpath298224_
                            (##structure-ref
                             _ctx298222_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath298224_))
                           _mpath298224_
                           (let ()
                             (declare (not safe))
                             (last _mpath298224_)))))))
                 (_section-string298205_
                  (lambda (_n298220_)
                    (if (let () (declare (not safe)) (number? _n298220_))
                        (number->string _n298220_)
                        (if (let () (declare (not safe)) (symbol? _n298220_))
                            (symbol->string _n298220_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n298220_))
                                _n298220_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n298220_)))))))
                 (_file-name298206_
                  (lambda (_path298218_)
                    (if _n298200_
                        (string-append
                         _path298218_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string298205_ _n298200_))
                         _ext298201_)
                        (string-append _path298218_ _ext298201_))))
                 (_file-path298207_
                  (lambda ()
                    (let ((_$e298213_ (gxc#current-compile-output-dir)))
                      (if _$e298213_
                          ((lambda (_outdir298216_)
                             (path-expand
                              (let ((__tmp304337
                                     (let ((__tmp304338
                                            (##structure-ref
                                             _ctx298199_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp304338))))
                                (declare (not safe))
                                (_file-name298206_ __tmp304337))
                              _outdir298216_))
                           _$e298213_)
                          (path-expand
                           (let ((__tmp304336
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path298203_
                                     _ctx298199_))))
                             (declare (not safe))
                             (_file-name298206_ __tmp304336))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory298204_
                              _ctx298199_))))))))
          (let ((_path298209_
                 (let () (declare (not safe)) (_file-path298207_))))
            (let ((__tmp304339
                   (lambda ()
                     (let ((__tmp304340 (path-directory _path298209_)))
                       (declare (not safe))
                       (create-directory* __tmp304340)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp304339))
            _path298209_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx298181_)
        (letrec ((_file-name298183_
                  (lambda (_id298197_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id298197_))
                     '".scm")))
                 (_file-path298184_
                  (lambda ()
                    (let* ((_file298190_
                            (let ((__tmp304341
                                   (##structure-ref
                                    _ctx298181_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name298183_ __tmp304341)))
                           (_$e298192_ (gxc#current-compile-output-dir)))
                      (if _$e298192_
                          ((lambda (_outdir298195_)
                             (path-expand
                              _file298190_
                              (path-expand '"static" _outdir298195_)))
                           _$e298192_)
                          (path-expand _file298190_ '"static"))))))
          (let ((_path298186_
                 (let () (declare (not safe)) (_file-path298184_))))
            (let ((__tmp304342
                   (lambda ()
                     (let ((__tmp304343 (path-directory _path298186_)))
                       (declare (not safe))
                       (create-directory* __tmp304343)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp304342))
            _path298186_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx298175_ _opts298176_)
        (let ((_$e298178_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts298176_))))
          (if _$e298178_
              (values _$e298178_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx298175_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr298168_)
        (if (let () (declare (not safe)) (string? _idstr298168_))
            (let* ((_str298170_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr298168_)))
                   (_strs298172_
                    (let ()
                      (declare (not safe))
                      (string-split _str298170_ '#\/))))
              (let () (declare (not safe)) (string-join _strs298172_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr298168_))
                (let ((__tmp304344 (symbol->string _idstr298168_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp304344))
                (error '"Bad module id" _idstr298168_)))))
    (define gxc#invoke__%
      (lambda (_g304345_
               _stdout-redirection298129298133_
               _stderr-redirection298130298135_
               _program298137_
               _args298138_)
        (let* ((_stdout-redirection298140_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection298129298133_ absent-value))
                    '#f
                    _stdout-redirection298129298133_))
               (_stderr-redirection298142_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection298130298135_ absent-value))
                    '#f
                    _stderr-redirection298130298135_)))
          (let ((__tmp304346
                 (let ()
                   (declare (not safe))
                   (cons _program298137_ _args298138_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp304346))
          (let* ((_proc298144_
                  (open-process
                   (let ((__tmp304347
                          (let ((__tmp304348
                                 (let ((__tmp304349
                                        (let ((__tmp304350
                                               (let ((__tmp304351
                                                      (let ((__tmp304352
                                                             (let ((__tmp304353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection298142_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp304353))))
                (declare (not safe))
                (cons _stdout-redirection298140_ __tmp304352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp304351))))
                                          (declare (not safe))
                                          (cons _args298138_ __tmp304350))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp304349))))
                            (declare (not safe))
                            (cons _program298137_ __tmp304348))))
                     (declare (not safe))
                     (cons 'path: __tmp304347))))
                 (_output298149_
                  (if (or _stdout-redirection298140_
                          _stderr-redirection298142_)
                      (read-line _proc298144_ '#f)
                      '#f)))
            (let ((_status298152_ (process-status _proc298144_)))
              (close-port _proc298144_)
              (if (let () (declare (not safe)) (zero? _status298152_))
                  '#!void
                  (begin
                    (display _output298149_)
                    (let ((__tmp304354
                           (let ()
                             (declare (not safe))
                             (cons _program298137_ _args298138_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp304354
                       _status298152_)))))))))
    (define gxc#invoke__@
      (lambda (_keys298128298157_ . _args298159_)
        (apply gxc#invoke__%
               _keys298128298157_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys298128298157_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys298128298157_
                  'stderr-redirection:
                  absent-value))
               _args298159_)))
    (define gxc#invoke
      (lambda _args298131298165_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args298131298165_)))
    (define gxc#join!
      (lambda (_thread298122_)
        (let ((__tmp304356
               (lambda (_exn298124_)
                 (if (uncaught-exception? _exn298124_)
                     (raise (uncaught-exception-reason _exn298124_))
                     (raise _exn298124_))))
              (__tmp304355 (lambda () (thread-join! _thread298122_))))
          (declare (not safe))
          (with-catch __tmp304356 __tmp304355))))))
