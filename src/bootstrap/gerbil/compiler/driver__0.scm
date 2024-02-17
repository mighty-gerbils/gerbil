(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708203252)
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
      (lambda (_path282851_ _fun282852_)
        (with-output-to-file
         (let ((__tmp287012
                (let ()
                  (declare (not safe))
                  (cons _path282851_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp287012))
         _fun282852_)))
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
      (lambda (_gerbil-libdir282846_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir282846_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/loader"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir282844_) (delete-file-or-directory _dir282844_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath282818_ _opts282819_)
        (if (let () (declare (not safe)) (string? _srcpath282818_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath282818_)))
        (let ((_outdir282821_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts282819_)))
              (_invoke-gsc?282822_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts282819_)))
              (_gsc-options282823_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts282819_)))
              (_keep-scm?282824_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts282819_)))
              (_verbosity282825_
               (let () (declare (not safe)) (pgetq 'verbose: _opts282819_)))
              (_optimize282826_
               (let () (declare (not safe)) (pgetq 'optimize: _opts282819_)))
              (_debug282827_
               (let () (declare (not safe)) (pgetq 'debug: _opts282819_)))
              (_gen-ssxi282828_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts282819_))))
          (if _outdir282821_
              (let ((__tmp287013
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir282821_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp287013))
              '#!void)
          (if _optimize282826_
              (let ((__tmp287014
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp287014))
              '#!void)
          (let ((__tmp287018
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath282818_))
                   (let ((__tmp287019
                          (let ((__tmp287020
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath282818_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp287020))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp287019))))
                (__tmp287017
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp287015
                 (let ((__tmp287016
                        (let ()
                          (declare (not safe))
                          (cons _srcpath282818_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp287016))))
            (declare (not safe))
            (call-with-parameters
             __tmp287018
             gxc#current-compile-output-dir
             _outdir282821_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?282822_
             gxc#current-compile-gsc-options
             _gsc-options282823_
             gxc#current-compile-keep-scm
             _keep-scm?282824_
             gxc#current-compile-verbose
             _verbosity282825_
             gxc#current-compile-optimize
             _optimize282826_
             gxc#current-compile-debug
             _debug282827_
             gxc#current-compile-generate-ssxi
             _gen-ssxi282828_
             gxc#current-compile-timestamp
             __tmp287017
             gxc#current-compile-context
             __tmp287015
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath282837_)
        (let ((_opts282839_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath282837_ _opts282839_))))
    (define gxc#compile-module
      (lambda _g287022_
        (let ((_g287021_ (let () (declare (not safe)) (##length _g287022_))))
          (cond ((let () (declare (not safe)) (##fx= _g287021_ 1))
                 (apply (lambda (_srcpath282837_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath282837_)))
                        _g287022_))
                ((let () (declare (not safe)) (##fx= _g287021_ 2))
                 (apply (lambda (_srcpath282841_ _opts282842_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath282841_
                             _opts282842_)))
                        _g287022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g287022_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath282794_ _opts282795_)
        (if (let () (declare (not safe)) (string? _srcpath282794_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath282794_)))
        (let ((_outdir282797_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts282795_)))
              (_invoke-gsc?282798_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts282795_)))
              (_gsc-options282799_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts282795_)))
              (_keep-scm?282800_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts282795_)))
              (_verbosity282801_
               (let () (declare (not safe)) (pgetq 'verbose: _opts282795_)))
              (_debug282802_
               (let () (declare (not safe)) (pgetq 'debug: _opts282795_))))
          (if _outdir282797_
              (let ((__tmp287023
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir282797_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp287023))
              '#!void)
          (let ((__tmp287027
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath282794_))
                   (let ((__tmp287028
                          (let ((__tmp287029
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath282794_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp287029))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp287028
                      _opts282795_))))
                (__tmp287026
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp287024
                 (let ((__tmp287025
                        (let ()
                          (declare (not safe))
                          (cons _srcpath282794_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp287025))))
            (declare (not safe))
            (call-with-parameters
             __tmp287027
             gxc#current-compile-output-dir
             _outdir282797_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?282798_
             gxc#current-compile-gsc-options
             _gsc-options282799_
             gxc#current-compile-keep-scm
             _keep-scm?282800_
             gxc#current-compile-verbose
             _verbosity282801_
             gxc#current-compile-debug
             _debug282802_
             gxc#current-compile-timestamp
             __tmp287026
             gxc#current-compile-context
             __tmp287024
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath282810_)
        (let ((_opts282812_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath282810_ _opts282812_))))
    (define gxc#compile-exe
      (lambda _g287031_
        (let ((_g287030_ (let () (declare (not safe)) (##length _g287031_))))
          (cond ((let () (declare (not safe)) (##fx= _g287030_ 1))
                 (apply (lambda (_srcpath282810_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath282810_)))
                        _g287031_))
                ((let () (declare (not safe)) (##fx= _g287030_ 2))
                 (apply (lambda (_srcpath282814_ _opts282815_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath282814_ _opts282815_)))
                        _g287031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g287031_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx282790_ _opts282791_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts282791_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx282790_
               _opts282791_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx282790_
               _opts282791_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx282673_ _opts282674_)
        (letrec ((_generate-stub282676_
                  (lambda (_builtin-modules282786_)
                    (let ((_mod-main282788_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx282673_ 'main))))
                      (write (let ((__tmp287032
                                    (let ((__tmp287033
                                           (let ((__tmp287034
                                                  (let ((__tmp287035
                                                         (let ((__tmp287037
                                                                (let ((__tmp287038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules282786_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp287038)))
                       (__tmp287036
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp287037 __tmp287036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp287035))))
                                             (declare (not safe))
                                             (cons __tmp287034 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp287033))))
                               (declare (not safe))
                               (cons 'define __tmp287032)))
                      (write (let ((__tmp287039
                                    (let ((__tmp287078
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp287040
                                           (let ((__tmp287041
                                                  (let ((__tmp287042
                                                         (let ((__tmp287066
                                                                (let ((__tmp287067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287068
                                      (let ((__tmp287076
                                             (let ((__tmp287077
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp287077)))
                                            (__tmp287069
                                             (let ((__tmp287070
                                                    (let ((__tmp287071
                                                           (let ((__tmp287072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287073
                                 (let ((__tmp287074
                                        (let ((__tmp287075
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp287075 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp287074))))
                            (declare (not safe))
                            (cons __tmp287073 '()))))
                     (declare (not safe))
                     (cons _mod-main282788_ __tmp287072))))
              (declare (not safe))
              (cons 'apply __tmp287071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287070 '()))))
                                        (declare (not safe))
                                        (cons __tmp287076 __tmp287069))))
                                 (declare (not safe))
                                 (cons '() __tmp287068))))
                          (declare (not safe))
                          (cons 'lambda __tmp287067)))
                       (__tmp287043
                        (let ((__tmp287044
                               (let ((__tmp287045
                                      (let ((__tmp287046
                                             (let ((__tmp287057
                                                    (let ((__tmp287058
                                                           (let ((__tmp287059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287060
                                 (let ((__tmp287061
                                        (let ((__tmp287062
                                               (let ((__tmp287063
                                                      (let ((__tmp287064
                                                             (let ((__tmp287065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp287065 '()))))
                (declare (not safe))
                (cons 'force-output __tmp287064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287063 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp287062))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp287061))))
                            (declare (not safe))
                            (cons __tmp287060 '()))))
                     (declare (not safe))
                     (cons 'void __tmp287059))))
              (declare (not safe))
              (cons 'with-catch __tmp287058)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287047
                                                    (let ((__tmp287048
                                                           (let ((__tmp287049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287050
                                 (let ((__tmp287051
                                        (let ((__tmp287052
                                               (let ((__tmp287053
                                                      (let ((__tmp287054
                                                             (let ((__tmp287055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287056
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp287056 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp287055))))
                (declare (not safe))
                (cons __tmp287054 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp287053))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp287052))))
                                   (declare (not safe))
                                   (cons __tmp287051 '()))))
                            (declare (not safe))
                            (cons 'void __tmp287050))))
                     (declare (not safe))
                     (cons 'with-catch __tmp287049))))
              (declare (not safe))
              (cons __tmp287048 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287057
                                                     __tmp287047))))
                                        (declare (not safe))
                                        (cons '() __tmp287046))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp287045))))
                          (declare (not safe))
                          (cons __tmp287044 '()))))
                   (declare (not safe))
                   (cons __tmp287066 __tmp287043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp287042))))
                                             (declare (not safe))
                                             (cons __tmp287041 '()))))
                                      (declare (not safe))
                                      (cons __tmp287078 __tmp287040))))
                               (declare (not safe))
                               (cons 'define __tmp287039)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts282677_
                  (lambda (_libgerbil282784_)
                    (call-with-input-file
                     (string-append _libgerbil282784_ '".ldd")
                     read)))
                 (_replace-extension282678_
                  (lambda (_path282781_ _ext282782_)
                    (string-append
                     (path-strip-extension _path282781_)
                     _ext282782_)))
                 (_not-exclude-module?282679_
                  (lambda (_ctx282777_)
                    (let ((_id-str282779_
                           (symbol->string
                            (##structure-ref
                             _ctx282777_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp287080
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str282779_))))
                            (declare (not safe))
                            (not __tmp287080))
                          (let ((__tmp287079
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str282779_))))
                            (declare (not safe))
                            (not __tmp287079))
                          '#f))))
                 (_not-file-empty?282680_
                  (lambda (_path282775_)
                    (let ((__tmp287081
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path282775_))))
                      (declare (not safe))
                      (not __tmp287081))))
                 (_compile-stub282681_
                  (lambda (_output-scm282688_ _output-bin282689_)
                    (let* ((_gerbil-home282691_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir282693_
                            (path-expand '"lib" _gerbil-home282691_))
                           (_gerbil-staticdir282695_
                            (path-expand '"static" _gerbil-libdir282693_))
                           (_gxlink282697_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir282693_))
                           (_tmp282699_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path282703_
                            (lambda (_f282701_)
                              (path-expand
                               (path-strip-directory _f282701_)
                               _tmp282699_)))
                           (_deps282705_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx282673_)))
                           (_deps282707_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?282679_
                                      _deps282705_)))
                           (_src-deps-scm282709_
                            (map gxc#find-static-module-file _deps282707_))
                           (_src-deps-scm282711_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?282680_
                                      _src-deps-scm282709_)))
                           (_src-deps-scm282713_
                            (map path-expand _src-deps-scm282711_))
                           (_deps-scm282715_
                            (map _tmp-path282703_ _src-deps-scm282713_))
                           (_deps-c282721_
                            (map (lambda (_g282716282718_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension282678_
                                      _g282716282718_
                                      '".c")))
                                 _deps-scm282715_))
                           (_deps-o282727_
                            (map (lambda (_g282722282724_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension282678_
                                      _g282722282724_
                                      '".o")))
                                 _deps-scm282715_))
                           (_src-bin-scm282729_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx282673_)))
                           (_src-bin-scm282731_
                            (path-expand _src-bin-scm282729_))
                           (_bin-scm282733_
                            (let ()
                              (declare (not safe))
                              (_tmp-path282703_ _src-bin-scm282731_)))
                           (_bin-c282735_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282678_
                               _bin-scm282733_
                               '".c")))
                           (_bin-o282737_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282678_
                               _bin-scm282733_
                               '".o")))
                           (_output-bin282739_
                            (path-expand _output-bin282689_))
                           (_output-scm282741_
                            (path-expand _output-scm282688_))
                           (_output-c282743_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282678_
                               _output-scm282741_
                               '".c")))
                           (_output-o282745_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282678_
                               _output-scm282741_
                               '".o")))
                           (_output_-c282747_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282678_
                               _output-scm282741_
                               '"_.c")))
                           (_output_-o282749_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282678_
                               _output-scm282741_
                               '"_.o")))
                           (_gsc-link-opts282751_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts282753_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts282755_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir282695_)))
                           (_output-ld-opts282757_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a282759_
                            (path-expand '"libgerbil.a" _gerbil-libdir282693_))
                           (_libgerbil.so282761_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir282693_))
                           (_libgerbil-ld-opts282763_
                            (if (file-exists? _libgerbil.so282761_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts282677_
                                   _libgerbil.so282761_))
                                (if (file-exists? _libgerbil.a282759_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts282677_
                                       _libgerbil.a282759_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a282759_
                                       _libgerbil.so282761_)))))
                           (_rpath282765_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir282693_)))
                           (_builtin-modules282769_
                            (map (lambda (_mod282767_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod282767_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx282673_ _deps282707_)))))
                      (let ((__tmp287082
                             (lambda ()
                               (let ((__tmp287083
                                      (path-directory _output-bin282739_)))
                                 (declare (not safe))
                                 (create-directory* __tmp287083)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp287082))
                      (let ((__tmp287084
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub282676_
                                  _builtin-modules282769_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm282741_
                         __tmp287084))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp287085
                                   (lambda () (create-directory _tmp282699_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp287085))
                            (for-each
                             copy-file
                             _src-deps-scm282713_
                             _deps-scm282715_)
                            (copy-file _src-bin-scm282731_ _bin-scm282733_)
                            (let ((__tmp287093
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp287086
                                   (let ((__tmp287087
                                          (let ((__tmp287088
                                                 (let ((__tmp287089
                                                        (let ((__tmp287090
                                                               (let ((__tmp287091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287092
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm282741_ '()))))
                                (declare (not safe))
                                (cons _bin-scm282733_ __tmp287092))))
                         (declare (not safe))
                         (foldr1 cons __tmp287091 _deps-scm282715_))))
                  (declare (not safe))
                  (foldr1 cons __tmp287090 _gsc-link-opts282751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink282697_
                                                         __tmp287089))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp287088))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp287087))))
                              (declare (not safe))
                              (gxc#invoke __tmp287093 __tmp287086))
                            (let ((__tmp287101
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp287094
                                   (let ((__tmp287095
                                          (let ((__tmp287096
                                                 (let ((__tmp287097
                                                        (let ((__tmp287098
                                                               (let ((__tmp287099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287100
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c282747_ '()))))
                                (declare (not safe))
                                (cons _output-c282743_ __tmp287100))))
                         (declare (not safe))
                         (cons _bin-c282735_ __tmp287099))))
                  (declare (not safe))
                  (foldr1 cons __tmp287098 _deps-c282721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp287097
                                                           _gsc-static-opts282755_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp287096
                                                    _gsc-cc-opts282753_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp287095))))
                              (declare (not safe))
                              (gxc#invoke __tmp287101 __tmp287094))
                            (let ((__tmp287114
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp287102
                                   (let ((__tmp287103
                                          (let ((__tmp287104
                                                 (let ((__tmp287105
                                                        (let ((__tmp287106
                                                               (let ((__tmp287107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287108
                                     (let ((__tmp287109
                                            (let ((__tmp287110
                                                   (let ((__tmp287111
                                                          (let ((__tmp287112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp287113
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts282763_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp287113))))
                    (declare (not safe))
                    (cons _gerbil-libdir282693_ __tmp287112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp287111))))
                                              (declare (not safe))
                                              (cons _rpath282765_
                                                    __tmp287110))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp287109
                                               _output-ld-opts282757_))))
                                (declare (not safe))
                                (cons _output_-o282749_ __tmp287108))))
                         (declare (not safe))
                         (cons _output-o282745_ __tmp287107))))
                  (declare (not safe))
                  (cons _bin-o282737_ __tmp287106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp287105
                                                           _deps-o282727_))))
                                            (declare (not safe))
                                            (cons _output-bin282739_
                                                  __tmp287104))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp287103))))
                              (declare (not safe))
                              (gxc#invoke __tmp287114 __tmp287102))
                            (for-each
                             delete-file
                             (let ((__tmp287115
                                    (let ((__tmp287116
                                           (let ((__tmp287117
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o282749_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o282745_
                                                   __tmp287117))))
                                      (declare (not safe))
                                      (cons _output_-c282747_ __tmp287116))))
                               (declare (not safe))
                               (cons _output-c282743_ __tmp287115)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp282699_)))
                          '#!void)))))
          (let* ((_output-bin282683_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx282673_ _opts282674_)))
                 (_output-scm282685_
                  (string-append _output-bin282683_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub282681_ _output-scm282685_ _output-bin282683_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm282685_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx282498_ _opts282499_)
        (letrec ((_reset-declare282501_
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
                 (_generate-stub282502_
                  (lambda (_deps282664_)
                    (let ((_mod-main282666_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx282498_ 'main)))
                          (_reset-decl282667_
                           (let ()
                             (declare (not safe))
                             (_reset-declare282501_)))
                          (_user-decl282668_
                           (let ()
                             (declare (not safe))
                             (_user-declare282503_))))
                      (for-each
                       (lambda (_dep282670_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl282667_)
                         (newline)
                         (if _user-decl282668_
                             (begin (write _user-decl282668_) (newline))
                             '#!void)
                         (write (let ((__tmp287118
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep282670_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp287118)))
                         (newline))
                       _deps282664_)
                      (write (let ((__tmp287119
                                    (let ((__tmp287132
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp287120
                                           (let ((__tmp287128
                                                  (let ((__tmp287129
                                                         (let ((__tmp287130
                                                                (let ((__tmp287131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp287131))))
                   (declare (not safe))
                   (cons __tmp287130 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp287129)))
                                                 (__tmp287121
                                                  (let ((__tmp287122
                                                         (let ((__tmp287123
                                                                (let ((__tmp287124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287125
                                      (let ((__tmp287126
                                             (let ((__tmp287127
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp287127 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp287126))))
                                 (declare (not safe))
                                 (cons __tmp287125 '()))))
                          (declare (not safe))
                          (cons _mod-main282666_ __tmp287124))))
                   (declare (not safe))
                   (cons 'apply __tmp287123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287122 '()))))
                                             (declare (not safe))
                                             (cons __tmp287128 __tmp287121))))
                                      (declare (not safe))
                                      (cons __tmp287132 __tmp287120))))
                               (declare (not safe))
                               (cons 'define __tmp287119)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare282503_
                  (lambda ()
                    (let* ((_gsc-opts282569_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts282499_)))
                           (_gsc-prelude282571_
                            (if _gsc-opts282569_
                                (member '"-prelude" _gsc-opts282569_)
                                '#f))
                           (_gsc-prelude282573_
                            (if _gsc-prelude282571_
                                (read (open-input-string
                                       (cadr _gsc-prelude282571_)))
                                '#f)))
                      (let _lp282576_ ((_rest282578_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude282573_ '())))
                                       (_user-decls282579_ '()))
                        (let* ((_rest282580282588_ _rest282578_)
                               (_else282582282596_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls282579_))
                                      '#f
                                      (let ((__tmp287133
                                             (reverse _user-decls282579_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp287133)))))
                               (_K282584282652_
                                (lambda (_rest282599_ _expr282600_)
                                  (let* ((_expr282601282613_ _expr282600_)
                                         (_else282604282621_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp282576_
                                               _rest282599_
                                               _user-decls282579_)))))
                                    (let ((_K282609282642_
                                           (lambda (_decls282640_)
                                             (let ((__tmp287134
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls282579_
                                                              _decls282640_))))
                                               (declare (not safe))
                                               (_lp282576_
                                                _rest282599_
                                                __tmp287134))))
                                          (_K282606282627_
                                           (lambda (_exprs282625_)
                                             (let ((__tmp287135
                                                    (append _exprs282625_
                                                            _rest282599_)))
                                               (declare (not safe))
                                               (_lp282576_
                                                __tmp287135
                                                _user-decls282579_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr282601282613_))
                                          (let ((_tl282611282647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr282601282613_)))
                                                (_hd282610282645_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr282601282613_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd282610282645_
                                                         'declare))
                                                (let ((_decls282650_
                                                       _tl282611282647_))
                                                  (declare (not safe))
                                                  (_K282609282642_
                                                   _decls282650_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd282610282645_
                                                             'begin))
                                                    (let ((_exprs282635_
                                                           _tl282611282647_))
                                                      (declare (not safe))
                                                      (_K282606282627_
                                                       _exprs282635_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else282604282621_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else282604282621_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest282580282588_))
                              (let ((_hd282585282655_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest282580282588_)))
                                    (_tl282586282657_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest282580282588_))))
                                (let* ((_expr282660_ _hd282585282655_)
                                       (_rest282662_ _tl282586282657_))
                                  (declare (not safe))
                                  (_K282584282652_ _rest282662_ _expr282660_)))
                              (let ()
                                (declare (not safe))
                                (_else282582282596_))))))))
                 (_compile-stub282504_
                  (lambda (_output-scm282511_ _output-bin282512_)
                    (let* ((_gerbil-home282514_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir282516_
                            (path-expand '"lib" _gerbil-home282514_))
                           (_runtime282518_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp282520_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home282514_))
                           (_include-gambit-sharp282522_
                            (string-append
                             '"(include \""
                             _gambit-sharp282520_
                             '"\")"))
                           (_bin-scm282524_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx282498_)))
                           (_deps282526_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx282498_)))
                           (_deps282528_
                            (map gxc#find-static-module-file _deps282526_))
                           (_deps282533_
                            (let ((__tmp287136
                                   (lambda (_$obj282530_)
                                     (let ((__tmp287137
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj282530_))))
                                       (declare (not safe))
                                       (not __tmp287137)))))
                              (declare (not safe))
                              (filter __tmp287136 _deps282528_)))
                           (_deps282537_
                            (let ((__tmp287138
                                   (lambda (_f282535_)
                                     (let ((__tmp287139
                                            (member _f282535_
                                                    _runtime282518_)))
                                       (declare (not safe))
                                       (not __tmp287139)))))
                              (declare (not safe))
                              (filter __tmp287138 _deps282533_)))
                           (_output-base282539_
                            (string-append
                             (path-strip-extension _output-scm282511_)))
                           (_output-c282541_
                            (string-append _output-base282539_ '".c"))
                           (_output-o282543_
                            (string-append _output-base282539_ '".o"))
                           (_output-c_282545_
                            (string-append _output-base282539_ '"_.c"))
                           (_output-o_282547_
                            (string-append _output-base282539_ '"_.o"))
                           (_gsc-link-opts282549_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts282551_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts282553_
                            (let ((__tmp287140
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir282516_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp287140)))
                           (_output-ld-opts282555_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros282557_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp287142
                                       (let ((__tmp287143
                                              (let ((__tmp287144
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp282522_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp287144))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp287143))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp287142))
                                (let ((__tmp287141
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp282522_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp287141))))
                           (_gsc-link-opts282559_
                            (append _gsc-link-opts282549_
                                    _gsc-gx-macros282557_))
                           (_rpath282561_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir282516_)))
                           (_default-ld-options282563_
                            (let ((__tmp287145
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp287145))))
                      (let ((__tmp287146
                             (lambda ()
                               (let ((__tmp287147
                                      (path-directory _output-bin282512_)))
                                 (declare (not safe))
                                 (create-directory* __tmp287147)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp287146))
                      (let ((__tmp287148
                             (lambda ()
                               (let ((__tmp287149
                                      (let ((__tmp287150
                                             (let ((__tmp287151
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm282524_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp287151
                                                       _deps282537_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp287150
                                                _runtime282518_))))
                                 (declare (not safe))
                                 (_generate-stub282502_ __tmp287149)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm282511_
                         __tmp287148))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp287157
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp287152
                                   (let ((__tmp287153
                                          (let ((__tmp287154
                                                 (let ((__tmp287155
                                                        (let ((__tmp287156
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm282511_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp287156 _gsc-link-opts282559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_282545_
                                                         __tmp287155))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp287154))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp287153))))
                              (declare (not safe))
                              (gxc#invoke __tmp287157 __tmp287152))
                            (let ((__tmp287163
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp287158
                                   (let ((__tmp287159
                                          (let ((__tmp287160
                                                 (let ((__tmp287161
                                                        (let ((__tmp287162
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_282545_ '()))))
                  (declare (not safe))
                  (cons _output-c282541_ __tmp287162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp287161
                                                           _gsc-static-opts282553_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp287160
                                                    _gsc-cc-opts282551_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp287159))))
                              (declare (not safe))
                              (gxc#invoke __tmp287163 __tmp287158))
                            (let ((__tmp287173
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp287164
                                   (let ((__tmp287165
                                          (let ((__tmp287166
                                                 (let ((__tmp287167
                                                        (let ((__tmp287168
                                                               (let ((__tmp287169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287170
                                     (let ((__tmp287171
                                            (let ((__tmp287172
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options282563_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir282516_
                                                    __tmp287172))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp287171))))
                                (declare (not safe))
                                (cons _rpath282561_ __tmp287170))))
                         (declare (not safe))
                         (foldr1 cons __tmp287169 _output-ld-opts282555_))))
                  (declare (not safe))
                  (cons _output-o_282547_ __tmp287168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o282543_
                                                         __tmp287167))))
                                            (declare (not safe))
                                            (cons _output-bin282512_
                                                  __tmp287166))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp287165))))
                              (declare (not safe))
                              (gxc#invoke __tmp287173 __tmp287164)))
                          '#!void)))))
          (let* ((_output-bin282506_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx282498_ _opts282499_)))
                 (_output-scm282508_
                  (string-append _output-bin282506_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub282504_ _output-scm282508_ _output-bin282506_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm282508_))))))
    (define gxc#find-export-binding
      (lambda (_ctx282448_ _id282449_)
        (let ((_$e282495_
               (let ((__tmp287175
                      (lambda (_e282450282452_)
                        (let* ((_g282454282464_ _e282450282452_)
                               (_else282456282472_ (lambda () '#f))
                               (_K282458282476_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g282454282464_
                                 'gx#module-export::t))
                              (let* ((_e282459282479_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g282454282464_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e282460282482_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g282454282464_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e282461282485_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g282454282464_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e282461282485_ '0))
                                    (let ((_e282462282488_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g282454282464_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g282490282492_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g282490282492_
                                                    _id282449_)))
                                           _e282462282488_)
                                          (let ()
                                            (declare (not safe))
                                            (_K282458282476_))
                                          (let ()
                                            (declare (not safe))
                                            (_else282456282472_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else282456282472_))))
                              (let ()
                                (declare (not safe))
                                (_else282456282472_))))))
                     (__tmp287174
                      (##structure-ref
                       _ctx282448_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp287175 __tmp287174))))
          (if _$e282495_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e282495_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx282440_ _id282441_)
        (let ((_$e282443_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx282440_ _id282441_))))
          (if _$e282443_
              ((lambda (_bind282446_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind282446_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id282441_)))
                 (##structure-ref _bind282446_ '1 gx#binding::t '#f))
               _$e282443_)
              (let ((__tmp287176
                     (##structure-ref
                      _ctx282440_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp287176
                 _id282441_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx282327_)
        (letrec* ((_ht282329_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template282330_
                   (lambda (_in282392_ _phi282393_)
                     (let ((_iphi282395_
                            (fx+ _phi282393_
                                 (##direct-structure-ref
                                  _in282392_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports282396_
                            (##structure-ref
                             (##direct-structure-ref
                              _in282392_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp282398_ ((_rest282400_ _imports282396_)
                                        (_r282401_ '()))
                         (let* ((_rest282402282410_ _rest282400_)
                                (_else282404282418_ (lambda () _r282401_))
                                (_K282406282428_
                                 (lambda (_rest282421_ _in282422_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in282422_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi282395_))
                                           (let ((__tmp287183
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in282422_
                                                          _r282401_))))
                                             (declare (not safe))
                                             (_lp282398_
                                              _rest282421_
                                              __tmp287183))
                                           (let ()
                                             (declare (not safe))
                                             (_lp282398_
                                              _rest282421_
                                              _r282401_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in282422_
                                              'gx#module-import::t))
                                           (let ((_iphi282424_
                                                  (fx+ _phi282393_
                                                       (##direct-structure-ref
                                                        _in282422_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi282424_))
                                                 (let ((__tmp287181
                                                        (let ((__tmp287182
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in282422_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp287182 _r282401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp282398_
                                                    _rest282421_
                                                    __tmp287181))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp282398_
                                                    _rest282421_
                                                    _r282401_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in282422_
                                                  'gx#import-set::t))
                                               (let ((_xphi282426_
                                                      (fx+ _iphi282395_
                                                           (##direct-structure-ref
                                                            _in282422_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi282426_))
                                                     (let ((__tmp287179
                                                            (let ((__tmp287180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in282422_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp287180 _r282401_))))
               (declare (not safe))
               (_lp282398_ _rest282421_ __tmp287179))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi282426_)
                                                         (let ((__tmp287177
                                                                (let ((__tmp287178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template282330_
                                  _in282422_
                                  _iphi282395_))))
                          (declare (not safe))
                          (foldl1 cons _r282401_ __tmp287178))))
                   (declare (not safe))
                   (_lp282398_ _rest282421_ __tmp287177))
                 (let ()
                   (declare (not safe))
                   (_lp282398_ _rest282421_ _r282401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp282398_
                                                  _rest282421_
                                                  _r282401_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest282402282410_))
                               (let ((_hd282407282431_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest282402282410_)))
                                     (_tl282408282433_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest282402282410_))))
                                 (let* ((_in282436_ _hd282407282431_)
                                        (_rest282438_ _tl282408282433_))
                                   (declare (not safe))
                                   (_K282406282428_ _rest282438_ _in282436_)))
                               (let ()
                                 (declare (not safe))
                                 (_else282404282418_))))))))
                  (_find-deps282331_
                   (lambda (_rest282338_ _deps282339_)
                     (let* ((_rest282340282348_ _rest282338_)
                            (_else282342282356_ (lambda () _deps282339_))
                            (_K282344282380_
                             (lambda (_rest282359_ _hd282360_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd282360_
                                      'gx#module-context::t))
                                   (let ((_id282362_
                                          (##structure-ref
                                           _hd282360_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports282363_
                                          (##structure-ref
                                           _hd282360_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht282329_ _id282362_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps282331_
                                            _rest282359_
                                            _deps282339_))
                                         (let ((_$e282365_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd282360_))))
                                           (if _$e282365_
                                               ((lambda (_pre282368_)
                                                  (let ((_xdeps282370_
                                                         (let ((__tmp287196
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre282368_ _imports282363_))))
                   (declare (not safe))
                   (_find-deps282331_ __tmp287196 _deps282339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht282329_
                                                       _id282362_
                                                       _hd282360_))
                                                    (let ((__tmp287197
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd282360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps282370_))))
              (declare (not safe))
              (_find-deps282331_ _rest282359_ __tmp287197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e282365_)
                                               (let ((_xdeps282372_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps282331_
                                                         _imports282363_
                                                         _deps282339_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht282329_
                                                    _id282362_
                                                    _hd282360_))
                                                 (let ((__tmp287195
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd282360_
                                                                _xdeps282372_))))
                                                   (declare (not safe))
                                                   (_find-deps282331_
                                                    _rest282359_
                                                    __tmp287195)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd282360_
                                          'gx#prelude-context::t))
                                       (let ((_id282374_
                                              (##structure-ref
                                               _hd282360_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht282329_
                                                _id282374_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps282331_
                                                _rest282359_
                                                _deps282339_))
                                             (let ((_xdeps282376_
                                                    (let ((__tmp287193
                                                           (##structure-ref
                                                            _hd282360_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps282331_
                                                       __tmp287193
                                                       _deps282339_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht282329_
                                                      _id282374_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps282331_
                                                      _rest282359_
                                                      _xdeps282376_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht282329_
                                                        _id282374_
                                                        _hd282360_))
                                                     (let ((__tmp287194
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd282360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps282376_))))
               (declare (not safe))
               (_find-deps282331_ _rest282359_ __tmp287194)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd282360_
                                              'gx#module-import::t))
                                           (if (let ((__tmp287192
                                                      (##direct-structure-ref
                                                       _hd282360_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp287192))
                                               (let ((__tmp287190
                                                      (let ((__tmp287191
                                                             (##direct-structure-ref
                                                              _hd282360_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp287191
                                                              _rest282359_))))
                                                 (declare (not safe))
                                                 (_find-deps282331_
                                                  __tmp287190
                                                  _deps282339_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps282331_
                                                  _rest282359_
                                                  _deps282339_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd282360_
                                                  'gx#module-export::t))
                                               (let ((__tmp287188
                                                      (let ((__tmp287189
                                                             (##direct-structure-ref
                                                              _hd282360_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp287189
                                                              _rest282359_))))
                                                 (declare (not safe))
                                                 (_find-deps282331_
                                                  __tmp287188
                                                  _deps282339_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd282360_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp287187
                                                              (##direct-structure-ref
                                                               _hd282360_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp287187))
                                                       (let ((__tmp287185
                                                              (let ((__tmp287186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd282360_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp287186 _rest282359_))))
                 (declare (not safe))
                 (_find-deps282331_ __tmp287185 _deps282339_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd282360_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps282378_
                           (let ()
                             (declare (not safe))
                             (_import-set-template282330_ _hd282360_ '0)))
                          (__tmp287184
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest282359_ _xdeps282378_))))
                     (declare (not safe))
                     (_find-deps282331_ __tmp287184 _deps282339_))
                   (let ()
                     (declare (not safe))
                     (_find-deps282331_ _rest282359_ _deps282339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd282360_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest282340282348_))
                           (let ((_hd282345282383_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest282340282348_)))
                                 (_tl282346282385_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest282340282348_))))
                             (let* ((_hd282388_ _hd282345282383_)
                                    (_rest282390_ _tl282346282385_))
                               (declare (not safe))
                               (_K282344282380_ _rest282390_ _hd282388_)))
                           (let ()
                             (declare (not safe))
                             (_else282342282356_)))))))
          (reverse (let ((__tmp287198
                          (let ((__tmp287199
                                 (let ((_$e282333_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx282327_))))
                                   (if _$e282333_
                                       ((lambda (_pre282336_)
                                          (let ((__tmp287200
                                                 (##structure-ref
                                                  _ctx282327_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre282336_ __tmp287200)))
                                        _$e282333_)
                                       (##structure-ref
                                        _ctx282327_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps282331_ __tmp287199 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp287198))))))
    (define gxc#find-static-module-file
      (lambda (_ctx282258_)
        (let* ((_context-id282260_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx282258_
                       'gx#module-context::t))
                    (##structure-ref _ctx282258_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx282258_)))
               (_scm282262_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id282260_))
                 '".scm"))
               (_dirs282264_ (gx#current-expander-module-library-path))
               (_dirs282270_
                (let ((_user-libpath282266_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath282266_
                      (let ((_user-libpath282268_
                             (path-expand '"lib" _user-libpath282266_)))
                        (if (member _user-libpath282268_ _dirs282264_)
                            _dirs282264_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath282268_ _dirs282264_))))
                      _dirs282264_)))
               (_dirs282279_
                (let ((_$e282272_ (gxc#current-compile-output-dir)))
                  (if _$e282272_
                      ((lambda (_g282274282276_)
                         (let ()
                           (declare (not safe))
                           (cons _g282274282276_ _dirs282270_)))
                       _$e282272_)
                      _dirs282270_)))
               (_dirs282285_
                (map (lambda (_g282280282282_)
                       (path-expand '"static" _g282280282282_))
                     _dirs282279_)))
          (let _lp282288_ ((_rest282290_ _dirs282285_))
            (let* ((_rest282291282299_ _rest282290_)
                   (_else282293282307_
                    (lambda ()
                      (let ((__tmp287201
                             (##structure-ref
                              _ctx282258_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp287201
                         _scm282262_))))
                   (_K282295282315_
                    (lambda (_rest282310_ _dir282311_)
                      (let ((_path282313_
                             (path-expand _scm282262_ _dir282311_)))
                        (if (file-exists? _path282313_)
                            _path282313_
                            (let ()
                              (declare (not safe))
                              (_lp282288_ _rest282310_)))))))
              (if (let () (declare (not safe)) (##pair? _rest282291282299_))
                  (let ((_hd282296282318_
                         (let ()
                           (declare (not safe))
                           (##car _rest282291282299_)))
                        (_tl282297282320_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest282291282299_))))
                    (let* ((_dir282323_ _hd282296282318_)
                           (_rest282325_ _tl282297282320_))
                      (declare (not safe))
                      (_K282295282315_ _rest282325_ _dir282323_)))
                  (let () (declare (not safe)) (_else282293282307_))))))))
    (define gxc#file-empty?
      (lambda (_path282256_)
        (let ((__tmp287202 (file-info-size (file-info _path282256_ '#t))))
          (declare (not safe))
          (zero? __tmp287202))))
    (define gxc#compile-top-module
      (lambda (_ctx282245_)
        (let ((__tmp287206
               (lambda ()
                 (let ((__tmp287207
                        (##structure-ref
                         _ctx282245_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp287207))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp287208
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx282245_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp287208))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx282245_))
                 (if (let ((__tmp287211
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx282245_))))
                       (declare (not safe))
                       (null? __tmp287211))
                     (let* ((_thr1282250_
                             (let ((__tmp287209
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx282245_)))))
                               (declare (not safe))
                               (spawn __tmp287209)))
                            (_thr2282253_
                             (let ((__tmp287210
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx282245_)))))
                               (declare (not safe))
                               (spawn __tmp287210))))
                       (let () (declare (not safe)) (gxc#join! _thr1282250_))
                       (let () (declare (not safe)) (gxc#join! _thr2282253_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx282245_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx282245_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx282245_))
                     '#!void)))
              (__tmp287205
               (let ((__obj287010
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj287010)
                 __obj287010))
              (__tmp287204 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp287203 (make-hash-table)))
          (declare (not safe))
          (call-with-parameters
           __tmp287206
           gx#current-expander-context
           _ctx282245_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp287205
           gxc#current-compile-runtime-sections
           __tmp287204
           gxc#current-compile-runtime-names
           __tmp287203))))
    (define gxc#collect-bindings
      (lambda (_ctx282243_)
        (let ((__tmp287212
               (##structure-ref _ctx282243_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp287212))))
    (define gxc#compile-runtime-code
      (lambda (_ctx282189_)
        (letrec ((_compile1282191_
                  (lambda (_ctx282232_)
                    (let* ((_code282234_
                            (##structure-ref
                             _ctx282232_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt282238_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code282234_))
                                (let ((_idstr282236_
                                       (let ((__tmp287213
                                              (##structure-ref
                                               _ctx282232_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp287213))))
                                  (string-append _idstr282236_ '"__0"))
                                '#f)))
                      (if _rt282238_
                          (begin
                            (let ((__tmp287214
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp287214 _ctx282232_ _rt282238_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code282193_
                               _ctx282232_
                               _code282234_)))
                          (let ((_path282241_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx282232_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path282241_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code282194_
                         _ctx282232_
                         _code282234_
                         _rt282238_)))))
                 (_context-timestamp282192_
                  (lambda (_ctx282230_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx282230_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code282193_
                  (lambda (_ctx282212_ _code282213_)
                    (let* ((_lifts282215_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code282218_
                            (let ((__tmp287217
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code282213_))))
                                  (__tmp287216
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp287215
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp287217
                               gx#current-expander-context
                               _ctx282212_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts282215_
                               gxc#current-compile-marks
                               __tmp287216
                               gxc#current-compile-identifiers
                               __tmp287215)))
                           (_runtime-code282220_
                            (if (let ((__tmp287221 (unbox _lifts282215_)))
                                  (declare (not safe))
                                  (null? __tmp287221))
                                _runtime-code282218_
                                (let ((__tmp287218
                                       (let ((__tmp287220
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code282218_
                                                      '())))
                                             (__tmp287219
                                              (reverse (unbox _lifts282215_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp287220
                                                 __tmp287219))))
                                  (declare (not safe))
                                  (cons 'begin __tmp287218))))
                           (_runtime-code282222_
                            (let ((__tmp287222
                                   (let ((__tmp287224
                                          (let ((__tmp287225
                                                 (let ((__tmp287228
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp282192_
                                                           _ctx282212_)))
                                                       (__tmp287226
                                                        (let ((__tmp287227
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp287227
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp287228
                                                         __tmp287226))))
                                            (declare (not safe))
                                            (cons 'define __tmp287225)))
                                         (__tmp287223
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code282220_ '()))))
                                     (declare (not safe))
                                     (cons __tmp287224 __tmp287223))))
                              (declare (not safe))
                              (cons 'begin __tmp287222)))
                           (_scm0282224_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx282212_
                               '0
                               '".scm"))))
                      (let ((_scms282227_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx282212_))))
                        (let ((__tmp287229
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0282224_
                                    _runtime-code282222_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp287229
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms282227_)
                            (delete-file _scms282227_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0282224_
                           '" => "
                           _scms282227_))
                        (copy-file _scm0282224_ _scms282227_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0282224_))))))
                 (_generate-loader-code282194_
                  (lambda (_ctx282201_ _code282202_ _rt282203_)
                    (let* ((_loader-code282206_
                            (let ((__tmp287230
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code282202_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp287230
                               gx#current-expander-context
                               _ctx282201_)))
                           (_loader-code282208_
                            (if _rt282203_
                                (let ((__tmp287231
                                       (let ((__tmp287232
                                              (let ((__tmp287233
                                                     (let ((__tmp287234
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt282203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp287234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287233 '()))))
                                         (declare (not safe))
                                         (cons _loader-code282206_
                                               __tmp287232))))
                                  (declare (not safe))
                                  (cons 'begin __tmp287231))
                                _loader-code282206_)))
                      (let ((__tmp287235
                             (lambda ()
                               (let ((__tmp287236
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx282201_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp287236
                                  _loader-code282208_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp287235
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules282196_
                 (let ((__tmp287237
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx282189_))))
                   (declare (not safe))
                   (cons _ctx282189_ __tmp287237))))
            (for-each
             (lambda (_ctx282198_)
               (let ((__tmp287238
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1282191_ _ctx282198_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp287238
                  gxc#current-compile-decls
                  '())))
             _all-modules282196_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx282086_)
        (letrec ((_compile-ssi282088_
                  (lambda (_code282159_)
                    (let* ((_path282161_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx282086_
                               '#f
                               '".ssi")))
                           (_prelude282172_
                            (let* ((_super282163_
                                    (##structure-ref
                                     _ctx282086_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e282165_
                                    (##structure-ref
                                     _super282163_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e282165_
                                  ((lambda (_g282167282169_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g282167282169_)))
                                   _$e282165_)
                                  ':<root>)))
                           (_ns282174_
                            (##structure-ref
                             _ctx282086_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr282176_
                            (symbol->string
                             (##structure-ref
                              _ctx282086_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg282183_
                            (let ((_$e282178_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr282176_ '#\/))))
                              (if _$e282178_
                                  ((lambda (_x282181_)
                                     (string->symbol
                                      (substring _idstr282176_ '0 _x282181_)))
                                   _$e282178_)
                                  '#f)))
                           (_rt282185_
                            (let ((__tmp287239
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp287239 _ctx282086_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path282161_))
                      (let ((__tmp287240
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude282172_))
                               (if _pkg282183_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg282183_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns282174_))
                               (newline)
                               (pretty-print _code282159_)
                               (if _rt282185_
                                   (pretty-print
                                    (let ((__tmp287241
                                           (let ((__tmp287245
                                                  (let ((__tmp287246
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp287246)))
                                                 (__tmp287242
                                                  (let ((__tmp287243
                                                         (let ((__tmp287244
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt282185_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp287244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287243 '()))))
                                             (declare (not safe))
                                             (cons __tmp287245 __tmp287242))))
                                      (declare (not safe))
                                      (cons '%#call __tmp287241)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path282161_
                         __tmp287240)))))
                 (_compile-phi282089_
                  (lambda (_part282099_)
                    (let* ((_part282100282113_ _part282099_)
                           (_E282102282117_
                            (lambda ()
                              (error '"No clause matching"
                                     _part282100282113_)))
                           (_K282103282128_
                            (lambda (_code282120_
                                     _n282121_
                                     _phi282122_
                                     _phi-ctx282123_)
                              (let* ((_code282126_
                                      (let ((__tmp287247
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code282120_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp287247
                                         gx#current-expander-context
                                         _phi-ctx282123_
                                         gx#current-expander-phi
                                         _phi282122_)))
                                     (__tmp287248
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx282086_
                                         _n282121_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp287248
                                 _code282126_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part282100282113_))
                          (let ((_hd282104282131_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part282100282113_)))
                                (_tl282105282133_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part282100282113_))))
                            (let ((_phi-ctx282136_ _hd282104282131_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl282105282133_))
                                  (let ((_hd282106282138_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl282105282133_)))
                                        (_tl282107282140_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl282105282133_))))
                                    (let ((_phi282143_ _hd282106282138_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl282107282140_))
                                          (let ((_hd282108282145_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl282107282140_)))
                                                (_tl282109282147_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl282107282140_))))
                                            (let ((_n282150_ _hd282108282145_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl282109282147_))
                                                  (let ((_hd282110282152_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl282109282147_)))
                                                        (_tl282111282154_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl282109282147_))))
                                                    (let ((_code282157_
                                                           _hd282110282152_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl282111282154_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K282103282128_
                                                             _code282157_
                                                             _n282150_
                                                             _phi282143_
                                                             _phi-ctx282136_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E282102282117_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E282102282117_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E282102282117_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E282102282117_)))))
                          (let () (declare (not safe)) (_E282102282117_)))))))
          (let ((_g287249_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx282086_))))
            (begin
              (let ((_g287250_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g287249_)
                           (##vector-length _g287249_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g287250_ 2)))
                    (error "Context expects 2 values" _g287250_)))
              (let ((_ssi-code282091_
                     (let () (declare (not safe)) (##vector-ref _g287249_ 0)))
                    (_phi-code282092_
                     (let () (declare (not safe)) (##vector-ref _g287249_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi282088_ _ssi-code282091_))
                  (let ((_threads282097_
                         (map (lambda (_code282094_)
                                (let ((__tmp287251
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi282089_
                                            _code282094_)))))
                                  (declare (not safe))
                                  (spawn __tmp287251)))
                              _phi-code282092_)))
                    (for-each gxc#join! _threads282097_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx282069_)
        (let* ((_path282071_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx282069_ '#f '".ssxi.ss")))
               (_code282073_
                (let ((__tmp287252
                       (##structure-ref
                        _ctx282069_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp287252)))
               (_idstr282075_
                (symbol->string
                 (##structure-ref _ctx282069_ '1 gx#expander-context::t '#f)))
               (_pkg282082_
                (let ((_$e282077_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr282075_ '#\/))))
                  (if _$e282077_
                      ((lambda (_x282080_)
                         (string->symbol
                          (substring _idstr282075_ '0 _x282080_)))
                       _$e282077_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path282071_))
          (let ((__tmp287253
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg282082_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg282082_))
                       '#!void)
                   (newline)
                   (pretty-print _code282073_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path282071_ __tmp287253)))))
    (define gxc#generate-meta-code
      (lambda (_ctx282062_)
        (let* ((_state282064_
                (let ((__obj287011
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj287011 _ctx282062_)
                  __obj287011))
               (_ssi-code282066_
                (let ((__tmp287254
                       (##structure-ref
                        _ctx282062_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp287254 _state282064_))))
          (values _ssi-code282066_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state282064_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx282055_)
        (let ((_lifts282057_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp287257
                 (lambda ()
                   (let ((_code282060_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx282055_))))
                     (if (let ((__tmp287261 (unbox _lifts282057_)))
                           (declare (not safe))
                           (null? __tmp287261))
                         _code282060_
                         (let ((__tmp287258
                                (let ((__tmp287260
                                       (let ()
                                         (declare (not safe))
                                         (cons _code282060_ '())))
                                      (__tmp287259
                                       (reverse (unbox _lifts282057_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp287260 __tmp287259))))
                           (declare (not safe))
                           (cons 'begin __tmp287258))))))
                (__tmp287256
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp287255
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp287257
             gxc#current-compile-lift
             _lifts282057_
             gxc#current-compile-marks
             __tmp287256
             gxc#current-compile-identifiers
             __tmp287255)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx282051_)
        (let ((_modules282053_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp287262
                 (##structure-ref _ctx282051_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp287262 _modules282053_))
          (reverse (unbox _modules282053_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path282034_ _code282035_ _phi?282036_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path282034_))
        (let ((__tmp287263
               (lambda ()
                 (pretty-print
                  (let ((__tmp287264
                         (let ((__tmp287271
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp287265
                                (let ((__tmp287270
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp287266
                                       (let ((__tmp287269
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp287267
                                              (let ((__tmp287268
                                                     (if _phi?282036_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp287268))))
                                         (declare (not safe))
                                         (cons __tmp287269 __tmp287267))))
                                  (declare (not safe))
                                  (cons __tmp287270 __tmp287266))))
                           (declare (not safe))
                           (cons __tmp287271 __tmp287265))))
                    (declare (not safe))
                    (cons 'declare __tmp287264)))
                 (pretty-print _code282035_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path282034_ __tmp287263))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path282034_ _phi?282036_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path282034_))))
    (define gxc#compile-scm-file__0
      (lambda (_path282042_ _code282043_)
        (let ((_phi?282045_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path282042_ _code282043_ _phi?282045_))))
    (define gxc#compile-scm-file
      (lambda _g287273_
        (let ((_g287272_ (let () (declare (not safe)) (##length _g287273_))))
          (cond ((let () (declare (not safe)) (##fx= _g287272_ 2))
                 (apply (lambda (_path282042_ _code282043_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path282042_
                             _code282043_)))
                        _g287273_))
                ((let () (declare (not safe)) (##fx= _g287272_ 3))
                 (apply (lambda (_path282047_ _code282048_ _phi?282049_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path282047_
                             _code282048_
                             _phi?282049_)))
                        _g287273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g287273_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?281935_)
        (let _lp281937_ ((_rest281939_ (gxc#current-compile-gsc-options))
                         (_opts281940_ '()))
          (let* ((_rest281941281961_ _rest281939_)
                 (_else281945281969_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?281935_))
                             (gxc#current-compile-debug))
                        (let ((__tmp287274
                               (let ((__tmp287275 (reverse _opts281940_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp287275))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp287274))
                        (reverse _opts281940_)))))
            (let ((_K281955282012_
                   (lambda (_rest282010_)
                     (let ()
                       (declare (not safe))
                       (_lp281937_ _rest282010_ _opts281940_))))
                  (_K281950281994_
                   (lambda (_rest281992_)
                     (let ()
                       (declare (not safe))
                       (_lp281937_ _rest281992_ _opts281940_))))
                  (_K281947281976_
                   (lambda (_rest281973_ _opt281974_)
                     (let ((__tmp287276
                            (let ()
                              (declare (not safe))
                              (cons _opt281974_ _opts281940_))))
                       (declare (not safe))
                       (_lp281937_ _rest281973_ __tmp287276)))))
              (if (let () (declare (not safe)) (##pair? _rest281941281961_))
                  (let ((_tl281957282017_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest281941281961_)))
                        (_hd281956282015_
                         (let ()
                           (declare (not safe))
                           (##car _rest281941281961_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd281956282015_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl281957282017_))
                            (let* ((_tl281959282020_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl281957282017_)))
                                   (_rest282023_ _tl281959282020_))
                              (declare (not safe))
                              (_K281955282012_ _rest282023_))
                            (let ((_opt281984_ _hd281956282015_)
                                  (_rest281986_ _tl281957282017_))
                              (let ()
                                (declare (not safe))
                                (_K281947281976_ _rest281986_ _opt281984_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd281956282015_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl281957282017_))
                                (let* ((_tl281954282002_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl281957282017_)))
                                       (_rest282005_ _tl281954282002_))
                                  (declare (not safe))
                                  (_K281950281994_ _rest282005_))
                                (let ((_opt281984_ _hd281956282015_)
                                      (_rest281986_ _tl281957282017_))
                                  (let ()
                                    (declare (not safe))
                                    (_K281947281976_
                                     _rest281986_
                                     _opt281984_))))
                            (let ((_opt281984_ _hd281956282015_)
                                  (_rest281986_ _tl281957282017_))
                              (let ()
                                (declare (not safe))
                                (_K281947281976_ _rest281986_ _opt281984_))))))
                  (let () (declare (not safe)) (_else281945281969_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?282029_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?282029_))))
    (define gxc#gsc-link-options
      (lambda _g287278_
        (let ((_g287277_ (let () (declare (not safe)) (##length _g287278_))))
          (cond ((let () (declare (not safe)) (##fx= _g287277_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g287278_))
                ((let () (declare (not safe)) (##fx= _g287277_ 1))
                 (apply (lambda (_phi?282031_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?282031_)))
                        _g287278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g287278_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?281836_)
        (let _lp281838_ ((_rest281840_ (gxc#current-compile-gsc-options))
                         (_opts281841_ '()))
          (let* ((_rest281842281862_ _rest281840_)
                 (_else281846281870_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?281836_))
                             (gxc#current-compile-debug))
                        (let ((__tmp287279
                               (let ((__tmp287280 (reverse _opts281841_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp287280))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp287279))
                        (reverse _opts281841_)))))
            (let ((_K281856281909_
                   (lambda (_rest281906_ _opt281907_)
                     (let ((__tmp287281
                            (let ((__tmp287282
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts281841_))))
                              (declare (not safe))
                              (cons _opt281907_ __tmp287282))))
                       (declare (not safe))
                       (_lp281838_ _rest281906_ __tmp287281))))
                  (_K281851281890_
                   (lambda (_rest281888_)
                     (let ()
                       (declare (not safe))
                       (_lp281838_ _rest281888_ _opts281841_))))
                  (_K281848281876_
                   (lambda (_rest281874_)
                     (let ()
                       (declare (not safe))
                       (_lp281838_ _rest281874_ _opts281841_)))))
              (if (let () (declare (not safe)) (##pair? _rest281842281862_))
                  (let ((_tl281858281914_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest281842281862_)))
                        (_hd281857281912_
                         (let ()
                           (declare (not safe))
                           (##car _rest281842281862_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd281857281912_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl281858281914_))
                            (let ((_tl281860281919_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl281858281914_)))
                                  (_hd281859281917_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl281858281914_))))
                              (let ((_opt281922_ _hd281859281917_)
                                    (_rest281924_ _tl281860281919_))
                                (let ()
                                  (declare (not safe))
                                  (_K281856281909_ _rest281924_ _opt281922_))))
                            (let ((_rest281882_ _tl281858281914_))
                              (declare (not safe))
                              (_K281848281876_ _rest281882_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd281857281912_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl281858281914_))
                                (let* ((_tl281855281898_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl281858281914_)))
                                       (_rest281901_ _tl281855281898_))
                                  (declare (not safe))
                                  (_K281851281890_ _rest281901_))
                                (let ((_rest281882_ _tl281858281914_))
                                  (declare (not safe))
                                  (_K281848281876_ _rest281882_)))
                            (let ((_rest281882_ _tl281858281914_))
                              (declare (not safe))
                              (_K281848281876_ _rest281882_)))))
                  (let () (declare (not safe)) (_else281846281870_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?281930_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?281930_))))
    (define gxc#gsc-cc-options
      (lambda _g287284_
        (let ((_g287283_ (let () (declare (not safe)) (##length _g287284_))))
          (cond ((let () (declare (not safe)) (##fx= _g287283_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g287284_))
                ((let () (declare (not safe)) (##fx= _g287283_ 1))
                 (apply (lambda (_phi?281932_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?281932_)))
                        _g287284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g287284_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir281831_)
        (let* ((_user-staticdir281833_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp287285
                (let ((__tmp287286
                       (string-append
                        '"-I "
                        _staticdir281831_
                        '" -I "
                        _user-staticdir281833_)))
                  (declare (not safe))
                  (cons __tmp287286 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp287285))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp281743_ ((_rest281745_ (gxc#current-compile-gsc-options))
                         (_opts281746_ '()))
          (let* ((_rest281747281767_ _rest281745_)
                 (_else281751281775_ (lambda () _opts281746_)))
            (let ((_K281761281818_
                   (lambda (_rest281816_)
                     (let ()
                       (declare (not safe))
                       (_lp281743_ _rest281816_ _opts281746_))))
                  (_K281756281796_
                   (lambda (_rest281793_ _opt281794_)
                     (let ((__tmp287287
                            (append _opts281746_
                                    (let ((__tmp287288
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt281794_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp287288)))))
                       (declare (not safe))
                       (_lp281743_ _rest281793_ __tmp287287))))
                  (_K281753281781_
                   (lambda (_rest281779_)
                     (let ()
                       (declare (not safe))
                       (_lp281743_ _rest281779_ _opts281746_)))))
              (if (let () (declare (not safe)) (##pair? _rest281747281767_))
                  (let ((_tl281763281823_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest281747281767_)))
                        (_hd281762281821_
                         (let ()
                           (declare (not safe))
                           (##car _rest281747281767_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd281762281821_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl281763281823_))
                            (let* ((_tl281765281826_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl281763281823_)))
                                   (_rest281829_ _tl281765281826_))
                              (declare (not safe))
                              (_K281761281818_ _rest281829_))
                            (let ((_rest281787_ _tl281763281823_))
                              (declare (not safe))
                              (_K281753281781_ _rest281787_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd281762281821_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl281763281823_))
                                (let ((_tl281760281806_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl281763281823_)))
                                      (_hd281759281804_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl281763281823_))))
                                  (let ((_opt281809_ _hd281759281804_)
                                        (_rest281811_ _tl281760281806_))
                                    (let ()
                                      (declare (not safe))
                                      (_K281756281796_
                                       _rest281811_
                                       _opt281809_))))
                                (let ((_rest281787_ _tl281763281823_))
                                  (declare (not safe))
                                  (_K281753281781_ _rest281787_)))
                            (let ((_rest281787_ _tl281763281823_))
                              (declare (not safe))
                              (_K281753281781_ _rest281787_)))))
                  (let () (declare (not safe)) (_else281751281775_))))))))
    (define gxc#not-string-empty?
      (lambda (_str281740_)
        (let ((__tmp287289
               (let () (declare (not safe)) (string-empty? _str281740_))))
          (declare (not safe))
          (not __tmp287289))))
    (define gxc#gsc-compile-file
      (lambda (_path281708_ _phi?281709_)
        (letrec ((_gsc-link-path281711_
                  (lambda (_base-path281732_)
                    (let _lp281734_ ((_n281736_ '1))
                      (let ((_path281738_
                             (string-append
                              _base-path281732_
                              '".o"
                              (number->string _n281736_))))
                        (if (file-exists? _path281738_)
                            (let ((__tmp287290
                                   (let ()
                                     (declare (not safe))
                                     (+ _n281736_ '1))))
                              (declare (not safe))
                              (_lp281734_ __tmp287290))
                            _path281738_))))))
          (let* ((_base-path281713_ (path-strip-extension _path281708_))
                 (_path-c281715_ (string-append _base-path281713_ '".c"))
                 (_path-o281717_ (string-append _base-path281713_ '".o"))
                 (_link-path281719_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path281711_ _base-path281713_)))
                 (_link-path-c281721_ (string-append _link-path281719_ '".c"))
                 (_link-path-o281723_ (string-append _link-path281719_ '".o"))
                 (_gsc-link-opts281725_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?281709_)))
                 (_gsc-cc-opts281727_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?281709_)))
                 (_gcc-ld-opts281729_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp287297 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp287291
                   (let ((__tmp287292
                          (let ((__tmp287293
                                 (let ((__tmp287294
                                        (let ((__tmp287295
                                               (let ((__tmp287296
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path281708_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp287296
                                                         _gsc-link-opts281725_))))
                                          (declare (not safe))
                                          (cons _link-path-c281721_
                                                __tmp287295))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp287294))))
                            (declare (not safe))
                            (cons '"-flat" __tmp287293))))
                     (declare (not safe))
                     (cons '"-link" __tmp287292))))
              (declare (not safe))
              (gxc#invoke __tmp287297 __tmp287291 'stdout-redirection: '#t))
            (let ((__tmp287304 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp287298
                   (let ((__tmp287299
                          (let ((__tmp287300
                                 (let ((__tmp287301
                                        (let ((__tmp287302
                                               (let ((__tmp287303
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c281721_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c281715_
                                                       __tmp287303))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp287302
                                                  _gsc-cc-opts281727_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp287301))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp287300))))
                     (declare (not safe))
                     (cons '"-obj" __tmp287299))))
              (declare (not safe))
              (gxc#invoke __tmp287304 __tmp287298 'stdout-redirection: '#t))
            (let ((__tmp287310 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp287305
                   (let ((__tmp287306
                          (let ((__tmp287307
                                 (let ((__tmp287308
                                        (let ((__tmp287309
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o281723_
                                                       _gcc-ld-opts281729_))))
                                          (declare (not safe))
                                          (cons _path-o281717_ __tmp287309))))
                                   (declare (not safe))
                                   (cons _link-path281719_ __tmp287308))))
                            (declare (not safe))
                            (cons '"-o" __tmp287307))))
                     (declare (not safe))
                     (cons '"-shared" __tmp287306))))
              (declare (not safe))
              (gxc#invoke __tmp287310 __tmp287305))
            (for-each
             delete-file
             (let ((__tmp287311
                    (let ((__tmp287312
                           (let ((__tmp287313
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o281723_ '()))))
                             (declare (not safe))
                             (cons _link-path-c281721_ __tmp287313))))
                      (declare (not safe))
                      (cons _path-o281717_ __tmp287312))))
               (declare (not safe))
               (cons _path-c281715_ __tmp287311)))))))
    (define gxc#compile-output-file
      (lambda (_ctx281679_ _n281680_ _ext281681_)
        (letrec ((_module-relative-path281683_
                  (lambda (_ctx281706_)
                    (path-strip-directory
                     (let ((__tmp287314
                            (##structure-ref
                             _ctx281706_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp287314)))))
                 (_module-source-directory281684_
                  (lambda (_ctx281702_)
                    (path-directory
                     (let ((_mpath281704_
                            (##structure-ref
                             _ctx281702_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath281704_))
                           _mpath281704_
                           (let ()
                             (declare (not safe))
                             (last _mpath281704_)))))))
                 (_section-string281685_
                  (lambda (_n281700_)
                    (if (let () (declare (not safe)) (number? _n281700_))
                        (number->string _n281700_)
                        (if (let () (declare (not safe)) (symbol? _n281700_))
                            (symbol->string _n281700_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n281700_))
                                _n281700_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n281700_)))))))
                 (_file-name281686_
                  (lambda (_path281698_)
                    (if _n281680_
                        (string-append
                         _path281698_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string281685_ _n281680_))
                         _ext281681_)
                        (string-append _path281698_ _ext281681_))))
                 (_file-path281687_
                  (lambda ()
                    (let ((_$e281693_ (gxc#current-compile-output-dir)))
                      (if _$e281693_
                          ((lambda (_outdir281696_)
                             (path-expand
                              (let ((__tmp287316
                                     (let ((__tmp287317
                                            (##structure-ref
                                             _ctx281679_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp287317))))
                                (declare (not safe))
                                (_file-name281686_ __tmp287316))
                              _outdir281696_))
                           _$e281693_)
                          (path-expand
                           (let ((__tmp287315
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path281683_
                                     _ctx281679_))))
                             (declare (not safe))
                             (_file-name281686_ __tmp287315))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory281684_
                              _ctx281679_))))))))
          (let ((_path281689_
                 (let () (declare (not safe)) (_file-path281687_))))
            (let ((__tmp287318
                   (lambda ()
                     (let ((__tmp287319 (path-directory _path281689_)))
                       (declare (not safe))
                       (create-directory* __tmp287319)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp287318))
            _path281689_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx281661_)
        (letrec ((_file-name281663_
                  (lambda (_id281677_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id281677_))
                     '".scm")))
                 (_file-path281664_
                  (lambda ()
                    (let* ((_file281670_
                            (let ((__tmp287320
                                   (##structure-ref
                                    _ctx281661_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name281663_ __tmp287320)))
                           (_$e281672_ (gxc#current-compile-output-dir)))
                      (if _$e281672_
                          ((lambda (_outdir281675_)
                             (path-expand
                              _file281670_
                              (path-expand '"static" _outdir281675_)))
                           _$e281672_)
                          (path-expand _file281670_ '"static"))))))
          (let ((_path281666_
                 (let () (declare (not safe)) (_file-path281664_))))
            (let ((__tmp287321
                   (lambda ()
                     (let ((__tmp287322 (path-directory _path281666_)))
                       (declare (not safe))
                       (create-directory* __tmp287322)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp287321))
            _path281666_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx281655_ _opts281656_)
        (let ((_$e281658_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts281656_))))
          (if _$e281658_
              (values _$e281658_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx281655_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr281648_)
        (if (let () (declare (not safe)) (string? _idstr281648_))
            (let* ((_str281650_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr281648_)))
                   (_strs281652_
                    (let ()
                      (declare (not safe))
                      (string-split _str281650_ '#\/))))
              (let () (declare (not safe)) (string-join _strs281652_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr281648_))
                (let ((__tmp287323 (symbol->string _idstr281648_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp287323))
                (error '"Bad module id" _idstr281648_)))))
    (define gxc#invoke__%
      (lambda (_g287324_
               _stdout-redirection281609281613_
               _stderr-redirection281610281615_
               _program281617_
               _args281618_)
        (let* ((_stdout-redirection281620_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection281609281613_ absent-value))
                    '#f
                    _stdout-redirection281609281613_))
               (_stderr-redirection281622_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection281610281615_ absent-value))
                    '#f
                    _stderr-redirection281610281615_)))
          (let ((__tmp287325
                 (let ()
                   (declare (not safe))
                   (cons _program281617_ _args281618_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp287325))
          (let* ((_proc281624_
                  (open-process
                   (let ((__tmp287326
                          (let ((__tmp287327
                                 (let ((__tmp287328
                                        (let ((__tmp287329
                                               (let ((__tmp287330
                                                      (let ((__tmp287331
                                                             (let ((__tmp287332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection281622_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp287332))))
                (declare (not safe))
                (cons _stdout-redirection281620_ __tmp287331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp287330))))
                                          (declare (not safe))
                                          (cons _args281618_ __tmp287329))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp287328))))
                            (declare (not safe))
                            (cons _program281617_ __tmp287327))))
                     (declare (not safe))
                     (cons 'path: __tmp287326))))
                 (_output281629_
                  (if (or _stdout-redirection281620_
                          _stderr-redirection281622_)
                      (read-line _proc281624_ '#f)
                      '#f)))
            (let ((_status281632_ (process-status _proc281624_)))
              (close-port _proc281624_)
              (if (let () (declare (not safe)) (zero? _status281632_))
                  '#!void
                  (begin
                    (display _output281629_)
                    (let ((__tmp287333
                           (let ()
                             (declare (not safe))
                             (cons _program281617_ _args281618_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp287333
                       _status281632_)))))))))
    (define gxc#invoke__@
      (lambda (_keys281608281637_ . _args281639_)
        (apply gxc#invoke__%
               _keys281608281637_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys281608281637_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys281608281637_
                  'stderr-redirection:
                  absent-value))
               _args281639_)))
    (define gxc#invoke
      (lambda _args281611281645_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args281611281645_)))
    (define gxc#join!
      (lambda (_thread281602_)
        (let ((__tmp287335
               (lambda (_exn281604_)
                 (if (uncaught-exception? _exn281604_)
                     (raise (uncaught-exception-reason _exn281604_))
                     (raise _exn281604_))))
              (__tmp287334 (lambda () (thread-join! _thread281602_))))
          (declare (not safe))
          (with-catch __tmp287335 __tmp287334))))))
