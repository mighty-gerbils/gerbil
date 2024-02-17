(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708210947)
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
      (lambda (_path282854_ _fun282855_)
        (with-output-to-file
         (let ((__tmp287015
                (let ()
                  (declare (not safe))
                  (cons _path282854_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp287015))
         _fun282855_)))
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
      (lambda (_gerbil-libdir282849_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir282849_)))
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
      (lambda (_dir282847_) (delete-file-or-directory _dir282847_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath282821_ _opts282822_)
        (if (let () (declare (not safe)) (string? _srcpath282821_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath282821_)))
        (let ((_outdir282824_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts282822_)))
              (_invoke-gsc?282825_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts282822_)))
              (_gsc-options282826_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts282822_)))
              (_keep-scm?282827_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts282822_)))
              (_verbosity282828_
               (let () (declare (not safe)) (pgetq 'verbose: _opts282822_)))
              (_optimize282829_
               (let () (declare (not safe)) (pgetq 'optimize: _opts282822_)))
              (_debug282830_
               (let () (declare (not safe)) (pgetq 'debug: _opts282822_)))
              (_gen-ssxi282831_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts282822_))))
          (if _outdir282824_
              (let ((__tmp287016
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir282824_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp287016))
              '#!void)
          (if _optimize282829_
              (let ((__tmp287017
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp287017))
              '#!void)
          (let ((__tmp287021
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath282821_))
                   (let ((__tmp287022
                          (let ((__tmp287023
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath282821_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp287023))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp287022))))
                (__tmp287020
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp287018
                 (let ((__tmp287019
                        (let ()
                          (declare (not safe))
                          (cons _srcpath282821_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp287019))))
            (declare (not safe))
            (call-with-parameters
             __tmp287021
             gxc#current-compile-output-dir
             _outdir282824_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?282825_
             gxc#current-compile-gsc-options
             _gsc-options282826_
             gxc#current-compile-keep-scm
             _keep-scm?282827_
             gxc#current-compile-verbose
             _verbosity282828_
             gxc#current-compile-optimize
             _optimize282829_
             gxc#current-compile-debug
             _debug282830_
             gxc#current-compile-generate-ssxi
             _gen-ssxi282831_
             gxc#current-compile-timestamp
             __tmp287020
             gxc#current-compile-context
             __tmp287018
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath282840_)
        (let ((_opts282842_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath282840_ _opts282842_))))
    (define gxc#compile-module
      (lambda _g287025_
        (let ((_g287024_ (let () (declare (not safe)) (##length _g287025_))))
          (cond ((let () (declare (not safe)) (##fx= _g287024_ 1))
                 (apply (lambda (_srcpath282840_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath282840_)))
                        _g287025_))
                ((let () (declare (not safe)) (##fx= _g287024_ 2))
                 (apply (lambda (_srcpath282844_ _opts282845_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath282844_
                             _opts282845_)))
                        _g287025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g287025_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath282797_ _opts282798_)
        (if (let () (declare (not safe)) (string? _srcpath282797_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath282797_)))
        (let ((_outdir282800_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts282798_)))
              (_invoke-gsc?282801_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts282798_)))
              (_gsc-options282802_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts282798_)))
              (_keep-scm?282803_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts282798_)))
              (_verbosity282804_
               (let () (declare (not safe)) (pgetq 'verbose: _opts282798_)))
              (_debug282805_
               (let () (declare (not safe)) (pgetq 'debug: _opts282798_))))
          (if _outdir282800_
              (let ((__tmp287026
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir282800_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp287026))
              '#!void)
          (let ((__tmp287030
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath282797_))
                   (let ((__tmp287031
                          (let ((__tmp287032
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath282797_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp287032))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp287031
                      _opts282798_))))
                (__tmp287029
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp287027
                 (let ((__tmp287028
                        (let ()
                          (declare (not safe))
                          (cons _srcpath282797_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp287028))))
            (declare (not safe))
            (call-with-parameters
             __tmp287030
             gxc#current-compile-output-dir
             _outdir282800_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?282801_
             gxc#current-compile-gsc-options
             _gsc-options282802_
             gxc#current-compile-keep-scm
             _keep-scm?282803_
             gxc#current-compile-verbose
             _verbosity282804_
             gxc#current-compile-debug
             _debug282805_
             gxc#current-compile-timestamp
             __tmp287029
             gxc#current-compile-context
             __tmp287027
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath282813_)
        (let ((_opts282815_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath282813_ _opts282815_))))
    (define gxc#compile-exe
      (lambda _g287034_
        (let ((_g287033_ (let () (declare (not safe)) (##length _g287034_))))
          (cond ((let () (declare (not safe)) (##fx= _g287033_ 1))
                 (apply (lambda (_srcpath282813_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath282813_)))
                        _g287034_))
                ((let () (declare (not safe)) (##fx= _g287033_ 2))
                 (apply (lambda (_srcpath282817_ _opts282818_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath282817_ _opts282818_)))
                        _g287034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g287034_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx282793_ _opts282794_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts282794_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx282793_
               _opts282794_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx282793_
               _opts282794_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx282676_ _opts282677_)
        (letrec ((_generate-stub282679_
                  (lambda (_builtin-modules282789_)
                    (let ((_mod-main282791_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx282676_ 'main))))
                      (write (let ((__tmp287035
                                    (let ((__tmp287036
                                           (let ((__tmp287037
                                                  (let ((__tmp287038
                                                         (let ((__tmp287040
                                                                (let ((__tmp287041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules282789_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp287041)))
                       (__tmp287039
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp287040 __tmp287039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp287038))))
                                             (declare (not safe))
                                             (cons __tmp287037 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp287036))))
                               (declare (not safe))
                               (cons 'define __tmp287035)))
                      (write (let ((__tmp287042
                                    (let ((__tmp287081
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp287043
                                           (let ((__tmp287044
                                                  (let ((__tmp287045
                                                         (let ((__tmp287069
                                                                (let ((__tmp287070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287071
                                      (let ((__tmp287079
                                             (let ((__tmp287080
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp287080)))
                                            (__tmp287072
                                             (let ((__tmp287073
                                                    (let ((__tmp287074
                                                           (let ((__tmp287075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287076
                                 (let ((__tmp287077
                                        (let ((__tmp287078
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp287078 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp287077))))
                            (declare (not safe))
                            (cons __tmp287076 '()))))
                     (declare (not safe))
                     (cons _mod-main282791_ __tmp287075))))
              (declare (not safe))
              (cons 'apply __tmp287074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287073 '()))))
                                        (declare (not safe))
                                        (cons __tmp287079 __tmp287072))))
                                 (declare (not safe))
                                 (cons '() __tmp287071))))
                          (declare (not safe))
                          (cons 'lambda __tmp287070)))
                       (__tmp287046
                        (let ((__tmp287047
                               (let ((__tmp287048
                                      (let ((__tmp287049
                                             (let ((__tmp287060
                                                    (let ((__tmp287061
                                                           (let ((__tmp287062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287063
                                 (let ((__tmp287064
                                        (let ((__tmp287065
                                               (let ((__tmp287066
                                                      (let ((__tmp287067
                                                             (let ((__tmp287068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp287068 '()))))
                (declare (not safe))
                (cons 'force-output __tmp287067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287066 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp287065))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp287064))))
                            (declare (not safe))
                            (cons __tmp287063 '()))))
                     (declare (not safe))
                     (cons 'void __tmp287062))))
              (declare (not safe))
              (cons 'with-catch __tmp287061)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287050
                                                    (let ((__tmp287051
                                                           (let ((__tmp287052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287053
                                 (let ((__tmp287054
                                        (let ((__tmp287055
                                               (let ((__tmp287056
                                                      (let ((__tmp287057
                                                             (let ((__tmp287058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287059
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp287059 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp287058))))
                (declare (not safe))
                (cons __tmp287057 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp287056))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp287055))))
                                   (declare (not safe))
                                   (cons __tmp287054 '()))))
                            (declare (not safe))
                            (cons 'void __tmp287053))))
                     (declare (not safe))
                     (cons 'with-catch __tmp287052))))
              (declare (not safe))
              (cons __tmp287051 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287060
                                                     __tmp287050))))
                                        (declare (not safe))
                                        (cons '() __tmp287049))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp287048))))
                          (declare (not safe))
                          (cons __tmp287047 '()))))
                   (declare (not safe))
                   (cons __tmp287069 __tmp287046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp287045))))
                                             (declare (not safe))
                                             (cons __tmp287044 '()))))
                                      (declare (not safe))
                                      (cons __tmp287081 __tmp287043))))
                               (declare (not safe))
                               (cons 'define __tmp287042)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts282680_
                  (lambda (_libgerbil282787_)
                    (call-with-input-file
                     (string-append _libgerbil282787_ '".ldd")
                     read)))
                 (_replace-extension282681_
                  (lambda (_path282784_ _ext282785_)
                    (string-append
                     (path-strip-extension _path282784_)
                     _ext282785_)))
                 (_not-exclude-module?282682_
                  (lambda (_ctx282780_)
                    (let ((_id-str282782_
                           (symbol->string
                            (##structure-ref
                             _ctx282780_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp287083
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str282782_))))
                            (declare (not safe))
                            (not __tmp287083))
                          (let ((__tmp287082
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str282782_))))
                            (declare (not safe))
                            (not __tmp287082))
                          '#f))))
                 (_not-file-empty?282683_
                  (lambda (_path282778_)
                    (let ((__tmp287084
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path282778_))))
                      (declare (not safe))
                      (not __tmp287084))))
                 (_compile-stub282684_
                  (lambda (_output-scm282691_ _output-bin282692_)
                    (let* ((_gerbil-home282694_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir282696_
                            (path-expand '"lib" _gerbil-home282694_))
                           (_gerbil-staticdir282698_
                            (path-expand '"static" _gerbil-libdir282696_))
                           (_gxlink282700_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir282696_))
                           (_tmp282702_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path282706_
                            (lambda (_f282704_)
                              (path-expand
                               (path-strip-directory _f282704_)
                               _tmp282702_)))
                           (_deps282708_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx282676_)))
                           (_deps282710_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?282682_
                                      _deps282708_)))
                           (_src-deps-scm282712_
                            (map gxc#find-static-module-file _deps282710_))
                           (_src-deps-scm282714_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?282683_
                                      _src-deps-scm282712_)))
                           (_src-deps-scm282716_
                            (map path-expand _src-deps-scm282714_))
                           (_deps-scm282718_
                            (map _tmp-path282706_ _src-deps-scm282716_))
                           (_deps-c282724_
                            (map (lambda (_g282719282721_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension282681_
                                      _g282719282721_
                                      '".c")))
                                 _deps-scm282718_))
                           (_deps-o282730_
                            (map (lambda (_g282725282727_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension282681_
                                      _g282725282727_
                                      '".o")))
                                 _deps-scm282718_))
                           (_src-bin-scm282732_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx282676_)))
                           (_src-bin-scm282734_
                            (path-expand _src-bin-scm282732_))
                           (_bin-scm282736_
                            (let ()
                              (declare (not safe))
                              (_tmp-path282706_ _src-bin-scm282734_)))
                           (_bin-c282738_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282681_
                               _bin-scm282736_
                               '".c")))
                           (_bin-o282740_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282681_
                               _bin-scm282736_
                               '".o")))
                           (_output-bin282742_
                            (path-expand _output-bin282692_))
                           (_output-scm282744_
                            (path-expand _output-scm282691_))
                           (_output-c282746_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282681_
                               _output-scm282744_
                               '".c")))
                           (_output-o282748_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282681_
                               _output-scm282744_
                               '".o")))
                           (_output_-c282750_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282681_
                               _output-scm282744_
                               '"_.c")))
                           (_output_-o282752_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282681_
                               _output-scm282744_
                               '"_.o")))
                           (_gsc-link-opts282754_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts282756_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts282758_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir282698_)))
                           (_output-ld-opts282760_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a282762_
                            (path-expand '"libgerbil.a" _gerbil-libdir282696_))
                           (_libgerbil.so282764_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir282696_))
                           (_libgerbil-ld-opts282766_
                            (if (file-exists? _libgerbil.so282764_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts282680_
                                   _libgerbil.so282764_))
                                (if (file-exists? _libgerbil.a282762_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts282680_
                                       _libgerbil.a282762_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a282762_
                                       _libgerbil.so282764_)))))
                           (_rpath282768_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir282696_)))
                           (_builtin-modules282772_
                            (map (lambda (_mod282770_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod282770_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx282676_ _deps282710_)))))
                      (let ((__tmp287085
                             (lambda ()
                               (let ((__tmp287086
                                      (path-directory _output-bin282742_)))
                                 (declare (not safe))
                                 (create-directory* __tmp287086)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp287085))
                      (let ((__tmp287087
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub282679_
                                  _builtin-modules282772_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm282744_
                         __tmp287087))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp287088
                                   (lambda () (create-directory _tmp282702_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp287088))
                            (for-each
                             copy-file
                             _src-deps-scm282716_
                             _deps-scm282718_)
                            (copy-file _src-bin-scm282734_ _bin-scm282736_)
                            (let ((__tmp287096
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp287089
                                   (let ((__tmp287090
                                          (let ((__tmp287091
                                                 (let ((__tmp287092
                                                        (let ((__tmp287093
                                                               (let ((__tmp287094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287095
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm282744_ '()))))
                                (declare (not safe))
                                (cons _bin-scm282736_ __tmp287095))))
                         (declare (not safe))
                         (foldr1 cons __tmp287094 _deps-scm282718_))))
                  (declare (not safe))
                  (foldr1 cons __tmp287093 _gsc-link-opts282754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink282700_
                                                         __tmp287092))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp287091))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp287090))))
                              (declare (not safe))
                              (gxc#invoke __tmp287096 __tmp287089))
                            (let ((__tmp287104
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp287097
                                   (let ((__tmp287098
                                          (let ((__tmp287099
                                                 (let ((__tmp287100
                                                        (let ((__tmp287101
                                                               (let ((__tmp287102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287103
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c282750_ '()))))
                                (declare (not safe))
                                (cons _output-c282746_ __tmp287103))))
                         (declare (not safe))
                         (cons _bin-c282738_ __tmp287102))))
                  (declare (not safe))
                  (foldr1 cons __tmp287101 _deps-c282724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp287100
                                                           _gsc-static-opts282758_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp287099
                                                    _gsc-cc-opts282756_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp287098))))
                              (declare (not safe))
                              (gxc#invoke __tmp287104 __tmp287097))
                            (let ((__tmp287117
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp287105
                                   (let ((__tmp287106
                                          (let ((__tmp287107
                                                 (let ((__tmp287108
                                                        (let ((__tmp287109
                                                               (let ((__tmp287110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287111
                                     (let ((__tmp287112
                                            (let ((__tmp287113
                                                   (let ((__tmp287114
                                                          (let ((__tmp287115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp287116
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts282766_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp287116))))
                    (declare (not safe))
                    (cons _gerbil-libdir282696_ __tmp287115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp287114))))
                                              (declare (not safe))
                                              (cons _rpath282768_
                                                    __tmp287113))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp287112
                                               _output-ld-opts282760_))))
                                (declare (not safe))
                                (cons _output_-o282752_ __tmp287111))))
                         (declare (not safe))
                         (cons _output-o282748_ __tmp287110))))
                  (declare (not safe))
                  (cons _bin-o282740_ __tmp287109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp287108
                                                           _deps-o282730_))))
                                            (declare (not safe))
                                            (cons _output-bin282742_
                                                  __tmp287107))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp287106))))
                              (declare (not safe))
                              (gxc#invoke __tmp287117 __tmp287105))
                            (for-each
                             delete-file
                             (let ((__tmp287118
                                    (let ((__tmp287119
                                           (let ((__tmp287120
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o282752_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o282748_
                                                   __tmp287120))))
                                      (declare (not safe))
                                      (cons _output_-c282750_ __tmp287119))))
                               (declare (not safe))
                               (cons _output-c282746_ __tmp287118)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp282702_)))
                          '#!void)))))
          (let* ((_output-bin282686_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx282676_ _opts282677_)))
                 (_output-scm282688_
                  (string-append _output-bin282686_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub282684_ _output-scm282688_ _output-bin282686_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm282688_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx282501_ _opts282502_)
        (letrec ((_reset-declare282504_
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
                 (_generate-stub282505_
                  (lambda (_deps282667_)
                    (let ((_mod-main282669_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx282501_ 'main)))
                          (_reset-decl282670_
                           (let ()
                             (declare (not safe))
                             (_reset-declare282504_)))
                          (_user-decl282671_
                           (let ()
                             (declare (not safe))
                             (_user-declare282506_))))
                      (for-each
                       (lambda (_dep282673_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl282670_)
                         (newline)
                         (if _user-decl282671_
                             (begin (write _user-decl282671_) (newline))
                             '#!void)
                         (write (let ((__tmp287121
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep282673_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp287121)))
                         (newline))
                       _deps282667_)
                      (write (let ((__tmp287122
                                    (let ((__tmp287135
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp287123
                                           (let ((__tmp287131
                                                  (let ((__tmp287132
                                                         (let ((__tmp287133
                                                                (let ((__tmp287134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp287134))))
                   (declare (not safe))
                   (cons __tmp287133 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp287132)))
                                                 (__tmp287124
                                                  (let ((__tmp287125
                                                         (let ((__tmp287126
                                                                (let ((__tmp287127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287128
                                      (let ((__tmp287129
                                             (let ((__tmp287130
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp287130 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp287129))))
                                 (declare (not safe))
                                 (cons __tmp287128 '()))))
                          (declare (not safe))
                          (cons _mod-main282669_ __tmp287127))))
                   (declare (not safe))
                   (cons 'apply __tmp287126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287125 '()))))
                                             (declare (not safe))
                                             (cons __tmp287131 __tmp287124))))
                                      (declare (not safe))
                                      (cons __tmp287135 __tmp287123))))
                               (declare (not safe))
                               (cons 'define __tmp287122)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare282506_
                  (lambda ()
                    (let* ((_gsc-opts282572_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts282502_)))
                           (_gsc-prelude282574_
                            (if _gsc-opts282572_
                                (member '"-prelude" _gsc-opts282572_)
                                '#f))
                           (_gsc-prelude282576_
                            (if _gsc-prelude282574_
                                (read (open-input-string
                                       (cadr _gsc-prelude282574_)))
                                '#f)))
                      (let _lp282579_ ((_rest282581_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude282576_ '())))
                                       (_user-decls282582_ '()))
                        (let* ((_rest282583282591_ _rest282581_)
                               (_else282585282599_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls282582_))
                                      '#f
                                      (let ((__tmp287136
                                             (reverse _user-decls282582_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp287136)))))
                               (_K282587282655_
                                (lambda (_rest282602_ _expr282603_)
                                  (let* ((_expr282604282616_ _expr282603_)
                                         (_else282607282624_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp282579_
                                               _rest282602_
                                               _user-decls282582_)))))
                                    (let ((_K282612282645_
                                           (lambda (_decls282643_)
                                             (let ((__tmp287137
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls282582_
                                                              _decls282643_))))
                                               (declare (not safe))
                                               (_lp282579_
                                                _rest282602_
                                                __tmp287137))))
                                          (_K282609282630_
                                           (lambda (_exprs282628_)
                                             (let ((__tmp287138
                                                    (append _exprs282628_
                                                            _rest282602_)))
                                               (declare (not safe))
                                               (_lp282579_
                                                __tmp287138
                                                _user-decls282582_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr282604282616_))
                                          (let ((_tl282614282650_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr282604282616_)))
                                                (_hd282613282648_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr282604282616_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd282613282648_
                                                         'declare))
                                                (let ((_decls282653_
                                                       _tl282614282650_))
                                                  (declare (not safe))
                                                  (_K282612282645_
                                                   _decls282653_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd282613282648_
                                                             'begin))
                                                    (let ((_exprs282638_
                                                           _tl282614282650_))
                                                      (declare (not safe))
                                                      (_K282609282630_
                                                       _exprs282638_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else282607282624_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else282607282624_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest282583282591_))
                              (let ((_hd282588282658_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest282583282591_)))
                                    (_tl282589282660_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest282583282591_))))
                                (let* ((_expr282663_ _hd282588282658_)
                                       (_rest282665_ _tl282589282660_))
                                  (declare (not safe))
                                  (_K282587282655_ _rest282665_ _expr282663_)))
                              (let ()
                                (declare (not safe))
                                (_else282585282599_))))))))
                 (_compile-stub282507_
                  (lambda (_output-scm282514_ _output-bin282515_)
                    (let* ((_gerbil-home282517_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir282519_
                            (path-expand '"lib" _gerbil-home282517_))
                           (_runtime282521_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp282523_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home282517_))
                           (_include-gambit-sharp282525_
                            (string-append
                             '"(include \""
                             _gambit-sharp282523_
                             '"\")"))
                           (_bin-scm282527_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx282501_)))
                           (_deps282529_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx282501_)))
                           (_deps282531_
                            (map gxc#find-static-module-file _deps282529_))
                           (_deps282536_
                            (let ((__tmp287139
                                   (lambda (_$obj282533_)
                                     (let ((__tmp287140
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj282533_))))
                                       (declare (not safe))
                                       (not __tmp287140)))))
                              (declare (not safe))
                              (filter __tmp287139 _deps282531_)))
                           (_deps282540_
                            (let ((__tmp287141
                                   (lambda (_f282538_)
                                     (let ((__tmp287142
                                            (member _f282538_
                                                    _runtime282521_)))
                                       (declare (not safe))
                                       (not __tmp287142)))))
                              (declare (not safe))
                              (filter __tmp287141 _deps282536_)))
                           (_output-base282542_
                            (string-append
                             (path-strip-extension _output-scm282514_)))
                           (_output-c282544_
                            (string-append _output-base282542_ '".c"))
                           (_output-o282546_
                            (string-append _output-base282542_ '".o"))
                           (_output-c_282548_
                            (string-append _output-base282542_ '"_.c"))
                           (_output-o_282550_
                            (string-append _output-base282542_ '"_.o"))
                           (_gsc-link-opts282552_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts282554_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts282556_
                            (let ((__tmp287143
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir282519_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp287143)))
                           (_output-ld-opts282558_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros282560_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp287145
                                       (let ((__tmp287146
                                              (let ((__tmp287147
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp282525_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp287147))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp287146))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp287145))
                                (let ((__tmp287144
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp282525_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp287144))))
                           (_gsc-link-opts282562_
                            (append _gsc-link-opts282552_
                                    _gsc-gx-macros282560_))
                           (_rpath282564_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir282519_)))
                           (_default-ld-options282566_
                            (let ((__tmp287148
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp287148))))
                      (let ((__tmp287149
                             (lambda ()
                               (let ((__tmp287150
                                      (path-directory _output-bin282515_)))
                                 (declare (not safe))
                                 (create-directory* __tmp287150)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp287149))
                      (let ((__tmp287151
                             (lambda ()
                               (let ((__tmp287152
                                      (let ((__tmp287153
                                             (let ((__tmp287154
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm282527_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp287154
                                                       _deps282540_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp287153
                                                _runtime282521_))))
                                 (declare (not safe))
                                 (_generate-stub282505_ __tmp287152)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm282514_
                         __tmp287151))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp287160
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp287155
                                   (let ((__tmp287156
                                          (let ((__tmp287157
                                                 (let ((__tmp287158
                                                        (let ((__tmp287159
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm282514_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp287159 _gsc-link-opts282562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_282548_
                                                         __tmp287158))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp287157))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp287156))))
                              (declare (not safe))
                              (gxc#invoke __tmp287160 __tmp287155))
                            (let ((__tmp287166
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp287161
                                   (let ((__tmp287162
                                          (let ((__tmp287163
                                                 (let ((__tmp287164
                                                        (let ((__tmp287165
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_282548_ '()))))
                  (declare (not safe))
                  (cons _output-c282544_ __tmp287165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp287164
                                                           _gsc-static-opts282556_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp287163
                                                    _gsc-cc-opts282554_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp287162))))
                              (declare (not safe))
                              (gxc#invoke __tmp287166 __tmp287161))
                            (let ((__tmp287176
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp287167
                                   (let ((__tmp287168
                                          (let ((__tmp287169
                                                 (let ((__tmp287170
                                                        (let ((__tmp287171
                                                               (let ((__tmp287172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287173
                                     (let ((__tmp287174
                                            (let ((__tmp287175
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options282566_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir282519_
                                                    __tmp287175))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp287174))))
                                (declare (not safe))
                                (cons _rpath282564_ __tmp287173))))
                         (declare (not safe))
                         (foldr1 cons __tmp287172 _output-ld-opts282558_))))
                  (declare (not safe))
                  (cons _output-o_282550_ __tmp287171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o282546_
                                                         __tmp287170))))
                                            (declare (not safe))
                                            (cons _output-bin282515_
                                                  __tmp287169))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp287168))))
                              (declare (not safe))
                              (gxc#invoke __tmp287176 __tmp287167)))
                          '#!void)))))
          (let* ((_output-bin282509_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx282501_ _opts282502_)))
                 (_output-scm282511_
                  (string-append _output-bin282509_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub282507_ _output-scm282511_ _output-bin282509_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm282511_))))))
    (define gxc#find-export-binding
      (lambda (_ctx282451_ _id282452_)
        (let ((_$e282498_
               (let ((__tmp287178
                      (lambda (_e282453282455_)
                        (let* ((_g282457282467_ _e282453282455_)
                               (_else282459282475_ (lambda () '#f))
                               (_K282461282479_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g282457282467_
                                 'gx#module-export::t))
                              (let* ((_e282462282482_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g282457282467_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e282463282485_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g282457282467_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e282464282488_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g282457282467_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e282464282488_ '0))
                                    (let ((_e282465282491_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g282457282467_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g282493282495_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g282493282495_
                                                    _id282452_)))
                                           _e282465282491_)
                                          (let ()
                                            (declare (not safe))
                                            (_K282461282479_))
                                          (let ()
                                            (declare (not safe))
                                            (_else282459282475_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else282459282475_))))
                              (let ()
                                (declare (not safe))
                                (_else282459282475_))))))
                     (__tmp287177
                      (##structure-ref
                       _ctx282451_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp287178 __tmp287177))))
          (if _$e282498_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e282498_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx282443_ _id282444_)
        (let ((_$e282446_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx282443_ _id282444_))))
          (if _$e282446_
              ((lambda (_bind282449_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind282449_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id282444_)))
                 (##structure-ref _bind282449_ '1 gx#binding::t '#f))
               _$e282446_)
              (let ((__tmp287179
                     (##structure-ref
                      _ctx282443_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp287179
                 _id282444_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx282330_)
        (letrec* ((_ht282332_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template282333_
                   (lambda (_in282395_ _phi282396_)
                     (let ((_iphi282398_
                            (fx+ _phi282396_
                                 (##direct-structure-ref
                                  _in282395_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports282399_
                            (##structure-ref
                             (##direct-structure-ref
                              _in282395_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp282401_ ((_rest282403_ _imports282399_)
                                        (_r282404_ '()))
                         (let* ((_rest282405282413_ _rest282403_)
                                (_else282407282421_ (lambda () _r282404_))
                                (_K282409282431_
                                 (lambda (_rest282424_ _in282425_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in282425_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi282398_))
                                           (let ((__tmp287186
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in282425_
                                                          _r282404_))))
                                             (declare (not safe))
                                             (_lp282401_
                                              _rest282424_
                                              __tmp287186))
                                           (let ()
                                             (declare (not safe))
                                             (_lp282401_
                                              _rest282424_
                                              _r282404_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in282425_
                                              'gx#module-import::t))
                                           (let ((_iphi282427_
                                                  (fx+ _phi282396_
                                                       (##direct-structure-ref
                                                        _in282425_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi282427_))
                                                 (let ((__tmp287184
                                                        (let ((__tmp287185
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in282425_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp287185 _r282404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp282401_
                                                    _rest282424_
                                                    __tmp287184))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp282401_
                                                    _rest282424_
                                                    _r282404_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in282425_
                                                  'gx#import-set::t))
                                               (let ((_xphi282429_
                                                      (fx+ _iphi282398_
                                                           (##direct-structure-ref
                                                            _in282425_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi282429_))
                                                     (let ((__tmp287182
                                                            (let ((__tmp287183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in282425_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp287183 _r282404_))))
               (declare (not safe))
               (_lp282401_ _rest282424_ __tmp287182))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi282429_)
                                                         (let ((__tmp287180
                                                                (let ((__tmp287181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template282333_
                                  _in282425_
                                  _iphi282398_))))
                          (declare (not safe))
                          (foldl1 cons _r282404_ __tmp287181))))
                   (declare (not safe))
                   (_lp282401_ _rest282424_ __tmp287180))
                 (let ()
                   (declare (not safe))
                   (_lp282401_ _rest282424_ _r282404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp282401_
                                                  _rest282424_
                                                  _r282404_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest282405282413_))
                               (let ((_hd282410282434_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest282405282413_)))
                                     (_tl282411282436_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest282405282413_))))
                                 (let* ((_in282439_ _hd282410282434_)
                                        (_rest282441_ _tl282411282436_))
                                   (declare (not safe))
                                   (_K282409282431_ _rest282441_ _in282439_)))
                               (let ()
                                 (declare (not safe))
                                 (_else282407282421_))))))))
                  (_find-deps282334_
                   (lambda (_rest282341_ _deps282342_)
                     (let* ((_rest282343282351_ _rest282341_)
                            (_else282345282359_ (lambda () _deps282342_))
                            (_K282347282383_
                             (lambda (_rest282362_ _hd282363_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd282363_
                                      'gx#module-context::t))
                                   (let ((_id282365_
                                          (##structure-ref
                                           _hd282363_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports282366_
                                          (##structure-ref
                                           _hd282363_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht282332_ _id282365_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps282334_
                                            _rest282362_
                                            _deps282342_))
                                         (let ((_$e282368_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd282363_))))
                                           (if _$e282368_
                                               ((lambda (_pre282371_)
                                                  (let ((_xdeps282373_
                                                         (let ((__tmp287199
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre282371_ _imports282366_))))
                   (declare (not safe))
                   (_find-deps282334_ __tmp287199 _deps282342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht282332_
                                                       _id282365_
                                                       _hd282363_))
                                                    (let ((__tmp287200
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd282363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps282373_))))
              (declare (not safe))
              (_find-deps282334_ _rest282362_ __tmp287200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e282368_)
                                               (let ((_xdeps282375_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps282334_
                                                         _imports282366_
                                                         _deps282342_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht282332_
                                                    _id282365_
                                                    _hd282363_))
                                                 (let ((__tmp287198
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd282363_
                                                                _xdeps282375_))))
                                                   (declare (not safe))
                                                   (_find-deps282334_
                                                    _rest282362_
                                                    __tmp287198)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd282363_
                                          'gx#prelude-context::t))
                                       (let ((_id282377_
                                              (##structure-ref
                                               _hd282363_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht282332_
                                                _id282377_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps282334_
                                                _rest282362_
                                                _deps282342_))
                                             (let ((_xdeps282379_
                                                    (let ((__tmp287196
                                                           (##structure-ref
                                                            _hd282363_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps282334_
                                                       __tmp287196
                                                       _deps282342_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht282332_
                                                      _id282377_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps282334_
                                                      _rest282362_
                                                      _xdeps282379_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht282332_
                                                        _id282377_
                                                        _hd282363_))
                                                     (let ((__tmp287197
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd282363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps282379_))))
               (declare (not safe))
               (_find-deps282334_ _rest282362_ __tmp287197)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd282363_
                                              'gx#module-import::t))
                                           (if (let ((__tmp287195
                                                      (##direct-structure-ref
                                                       _hd282363_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp287195))
                                               (let ((__tmp287193
                                                      (let ((__tmp287194
                                                             (##direct-structure-ref
                                                              _hd282363_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp287194
                                                              _rest282362_))))
                                                 (declare (not safe))
                                                 (_find-deps282334_
                                                  __tmp287193
                                                  _deps282342_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps282334_
                                                  _rest282362_
                                                  _deps282342_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd282363_
                                                  'gx#module-export::t))
                                               (let ((__tmp287191
                                                      (let ((__tmp287192
                                                             (##direct-structure-ref
                                                              _hd282363_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp287192
                                                              _rest282362_))))
                                                 (declare (not safe))
                                                 (_find-deps282334_
                                                  __tmp287191
                                                  _deps282342_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd282363_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp287190
                                                              (##direct-structure-ref
                                                               _hd282363_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp287190))
                                                       (let ((__tmp287188
                                                              (let ((__tmp287189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd282363_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp287189 _rest282362_))))
                 (declare (not safe))
                 (_find-deps282334_ __tmp287188 _deps282342_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd282363_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps282381_
                           (let ()
                             (declare (not safe))
                             (_import-set-template282333_ _hd282363_ '0)))
                          (__tmp287187
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest282362_ _xdeps282381_))))
                     (declare (not safe))
                     (_find-deps282334_ __tmp287187 _deps282342_))
                   (let ()
                     (declare (not safe))
                     (_find-deps282334_ _rest282362_ _deps282342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd282363_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest282343282351_))
                           (let ((_hd282348282386_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest282343282351_)))
                                 (_tl282349282388_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest282343282351_))))
                             (let* ((_hd282391_ _hd282348282386_)
                                    (_rest282393_ _tl282349282388_))
                               (declare (not safe))
                               (_K282347282383_ _rest282393_ _hd282391_)))
                           (let ()
                             (declare (not safe))
                             (_else282345282359_)))))))
          (reverse (let ((__tmp287201
                          (let ((__tmp287202
                                 (let ((_$e282336_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx282330_))))
                                   (if _$e282336_
                                       ((lambda (_pre282339_)
                                          (let ((__tmp287203
                                                 (##structure-ref
                                                  _ctx282330_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre282339_ __tmp287203)))
                                        _$e282336_)
                                       (##structure-ref
                                        _ctx282330_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps282334_ __tmp287202 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp287201))))))
    (define gxc#find-static-module-file
      (lambda (_ctx282261_)
        (let* ((_context-id282263_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx282261_
                       'gx#module-context::t))
                    (##structure-ref _ctx282261_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx282261_)))
               (_scm282265_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id282263_))
                 '".scm"))
               (_dirs282267_ (gx#current-expander-module-library-path))
               (_dirs282273_
                (let ((_user-libpath282269_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath282269_
                      (let ((_user-libpath282271_
                             (path-expand '"lib" _user-libpath282269_)))
                        (if (member _user-libpath282271_ _dirs282267_)
                            _dirs282267_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath282271_ _dirs282267_))))
                      _dirs282267_)))
               (_dirs282282_
                (let ((_$e282275_ (gxc#current-compile-output-dir)))
                  (if _$e282275_
                      ((lambda (_g282277282279_)
                         (let ()
                           (declare (not safe))
                           (cons _g282277282279_ _dirs282273_)))
                       _$e282275_)
                      _dirs282273_)))
               (_dirs282288_
                (map (lambda (_g282283282285_)
                       (path-expand '"static" _g282283282285_))
                     _dirs282282_)))
          (let _lp282291_ ((_rest282293_ _dirs282288_))
            (let* ((_rest282294282302_ _rest282293_)
                   (_else282296282310_
                    (lambda ()
                      (let ((__tmp287204
                             (##structure-ref
                              _ctx282261_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp287204
                         _scm282265_))))
                   (_K282298282318_
                    (lambda (_rest282313_ _dir282314_)
                      (let ((_path282316_
                             (path-expand _scm282265_ _dir282314_)))
                        (if (file-exists? _path282316_)
                            _path282316_
                            (let ()
                              (declare (not safe))
                              (_lp282291_ _rest282313_)))))))
              (if (let () (declare (not safe)) (##pair? _rest282294282302_))
                  (let ((_hd282299282321_
                         (let ()
                           (declare (not safe))
                           (##car _rest282294282302_)))
                        (_tl282300282323_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest282294282302_))))
                    (let* ((_dir282326_ _hd282299282321_)
                           (_rest282328_ _tl282300282323_))
                      (declare (not safe))
                      (_K282298282318_ _rest282328_ _dir282326_)))
                  (let () (declare (not safe)) (_else282296282310_))))))))
    (define gxc#file-empty?
      (lambda (_path282259_)
        (let ((__tmp287205 (file-info-size (file-info _path282259_ '#t))))
          (declare (not safe))
          (zero? __tmp287205))))
    (define gxc#compile-top-module
      (lambda (_ctx282248_)
        (let ((__tmp287209
               (lambda ()
                 (let ((__tmp287210
                        (##structure-ref
                         _ctx282248_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp287210))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp287211
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx282248_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp287211))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx282248_))
                 (if (let ((__tmp287214
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx282248_))))
                       (declare (not safe))
                       (null? __tmp287214))
                     (let* ((_thr1282253_
                             (let ((__tmp287212
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx282248_)))))
                               (declare (not safe))
                               (spawn __tmp287212)))
                            (_thr2282256_
                             (let ((__tmp287213
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx282248_)))))
                               (declare (not safe))
                               (spawn __tmp287213))))
                       (let () (declare (not safe)) (gxc#join! _thr1282253_))
                       (let () (declare (not safe)) (gxc#join! _thr2282256_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx282248_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx282248_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx282248_))
                     '#!void)))
              (__tmp287208
               (let ((__obj287013
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj287013)
                 __obj287013))
              (__tmp287207 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp287206 (make-hash-table)))
          (declare (not safe))
          (call-with-parameters
           __tmp287209
           gx#current-expander-context
           _ctx282248_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp287208
           gxc#current-compile-runtime-sections
           __tmp287207
           gxc#current-compile-runtime-names
           __tmp287206))))
    (define gxc#collect-bindings
      (lambda (_ctx282246_)
        (let ((__tmp287215
               (##structure-ref _ctx282246_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp287215))))
    (define gxc#compile-runtime-code
      (lambda (_ctx282192_)
        (letrec ((_compile1282194_
                  (lambda (_ctx282235_)
                    (let* ((_code282237_
                            (##structure-ref
                             _ctx282235_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt282241_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code282237_))
                                (let ((_idstr282239_
                                       (let ((__tmp287216
                                              (##structure-ref
                                               _ctx282235_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp287216))))
                                  (string-append _idstr282239_ '"__0"))
                                '#f)))
                      (if _rt282241_
                          (begin
                            (let ((__tmp287217
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp287217 _ctx282235_ _rt282241_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code282196_
                               _ctx282235_
                               _code282237_)))
                          (let ((_path282244_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx282235_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path282244_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code282197_
                         _ctx282235_
                         _code282237_
                         _rt282241_)))))
                 (_context-timestamp282195_
                  (lambda (_ctx282233_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx282233_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code282196_
                  (lambda (_ctx282215_ _code282216_)
                    (let* ((_lifts282218_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code282221_
                            (let ((__tmp287220
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code282216_))))
                                  (__tmp287219
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp287218
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp287220
                               gx#current-expander-context
                               _ctx282215_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts282218_
                               gxc#current-compile-marks
                               __tmp287219
                               gxc#current-compile-identifiers
                               __tmp287218)))
                           (_runtime-code282223_
                            (if (let ((__tmp287224 (unbox _lifts282218_)))
                                  (declare (not safe))
                                  (null? __tmp287224))
                                _runtime-code282221_
                                (let ((__tmp287221
                                       (let ((__tmp287223
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code282221_
                                                      '())))
                                             (__tmp287222
                                              (reverse (unbox _lifts282218_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp287223
                                                 __tmp287222))))
                                  (declare (not safe))
                                  (cons 'begin __tmp287221))))
                           (_runtime-code282225_
                            (let ((__tmp287225
                                   (let ((__tmp287227
                                          (let ((__tmp287228
                                                 (let ((__tmp287231
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp282195_
                                                           _ctx282215_)))
                                                       (__tmp287229
                                                        (let ((__tmp287230
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp287230
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp287231
                                                         __tmp287229))))
                                            (declare (not safe))
                                            (cons 'define __tmp287228)))
                                         (__tmp287226
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code282223_ '()))))
                                     (declare (not safe))
                                     (cons __tmp287227 __tmp287226))))
                              (declare (not safe))
                              (cons 'begin __tmp287225)))
                           (_scm0282227_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx282215_
                               '0
                               '".scm"))))
                      (let ((_scms282230_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx282215_))))
                        (let ((__tmp287232
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0282227_
                                    _runtime-code282225_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp287232
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms282230_)
                            (delete-file _scms282230_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0282227_
                           '" => "
                           _scms282230_))
                        (copy-file _scm0282227_ _scms282230_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0282227_))))))
                 (_generate-loader-code282197_
                  (lambda (_ctx282204_ _code282205_ _rt282206_)
                    (let* ((_loader-code282209_
                            (let ((__tmp287233
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code282205_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp287233
                               gx#current-expander-context
                               _ctx282204_)))
                           (_loader-code282211_
                            (if _rt282206_
                                (let ((__tmp287234
                                       (let ((__tmp287235
                                              (let ((__tmp287236
                                                     (let ((__tmp287237
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt282206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp287237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287236 '()))))
                                         (declare (not safe))
                                         (cons _loader-code282209_
                                               __tmp287235))))
                                  (declare (not safe))
                                  (cons 'begin __tmp287234))
                                _loader-code282209_)))
                      (let ((__tmp287238
                             (lambda ()
                               (let ((__tmp287239
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx282204_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp287239
                                  _loader-code282211_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp287238
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules282199_
                 (let ((__tmp287240
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx282192_))))
                   (declare (not safe))
                   (cons _ctx282192_ __tmp287240))))
            (for-each
             (lambda (_ctx282201_)
               (let ((__tmp287241
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1282194_ _ctx282201_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp287241
                  gxc#current-compile-decls
                  '())))
             _all-modules282199_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx282089_)
        (letrec ((_compile-ssi282091_
                  (lambda (_code282162_)
                    (let* ((_path282164_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx282089_
                               '#f
                               '".ssi")))
                           (_prelude282175_
                            (let* ((_super282166_
                                    (##structure-ref
                                     _ctx282089_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e282168_
                                    (##structure-ref
                                     _super282166_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e282168_
                                  ((lambda (_g282170282172_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g282170282172_)))
                                   _$e282168_)
                                  ':<root>)))
                           (_ns282177_
                            (##structure-ref
                             _ctx282089_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr282179_
                            (symbol->string
                             (##structure-ref
                              _ctx282089_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg282186_
                            (let ((_$e282181_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr282179_ '#\/))))
                              (if _$e282181_
                                  ((lambda (_x282184_)
                                     (string->symbol
                                      (substring _idstr282179_ '0 _x282184_)))
                                   _$e282181_)
                                  '#f)))
                           (_rt282188_
                            (let ((__tmp287242
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp287242 _ctx282089_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path282164_))
                      (let ((__tmp287243
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude282175_))
                               (if _pkg282186_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg282186_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns282177_))
                               (newline)
                               (pretty-print _code282162_)
                               (if _rt282188_
                                   (pretty-print
                                    (let ((__tmp287244
                                           (let ((__tmp287248
                                                  (let ((__tmp287249
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp287249)))
                                                 (__tmp287245
                                                  (let ((__tmp287246
                                                         (let ((__tmp287247
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt282188_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp287247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287246 '()))))
                                             (declare (not safe))
                                             (cons __tmp287248 __tmp287245))))
                                      (declare (not safe))
                                      (cons '%#call __tmp287244)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path282164_
                         __tmp287243)))))
                 (_compile-phi282092_
                  (lambda (_part282102_)
                    (let* ((_part282103282116_ _part282102_)
                           (_E282105282120_
                            (lambda ()
                              (error '"No clause matching"
                                     _part282103282116_)))
                           (_K282106282131_
                            (lambda (_code282123_
                                     _n282124_
                                     _phi282125_
                                     _phi-ctx282126_)
                              (let* ((_code282129_
                                      (let ((__tmp287250
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code282123_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp287250
                                         gx#current-expander-context
                                         _phi-ctx282126_
                                         gx#current-expander-phi
                                         _phi282125_)))
                                     (__tmp287251
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx282089_
                                         _n282124_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp287251
                                 _code282129_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part282103282116_))
                          (let ((_hd282107282134_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part282103282116_)))
                                (_tl282108282136_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part282103282116_))))
                            (let ((_phi-ctx282139_ _hd282107282134_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl282108282136_))
                                  (let ((_hd282109282141_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl282108282136_)))
                                        (_tl282110282143_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl282108282136_))))
                                    (let ((_phi282146_ _hd282109282141_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl282110282143_))
                                          (let ((_hd282111282148_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl282110282143_)))
                                                (_tl282112282150_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl282110282143_))))
                                            (let ((_n282153_ _hd282111282148_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl282112282150_))
                                                  (let ((_hd282113282155_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl282112282150_)))
                                                        (_tl282114282157_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl282112282150_))))
                                                    (let ((_code282160_
                                                           _hd282113282155_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl282114282157_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K282106282131_
                                                             _code282160_
                                                             _n282153_
                                                             _phi282146_
                                                             _phi-ctx282139_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E282105282120_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E282105282120_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E282105282120_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E282105282120_)))))
                          (let () (declare (not safe)) (_E282105282120_)))))))
          (let ((_g287252_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx282089_))))
            (begin
              (let ((_g287253_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g287252_)
                           (##vector-length _g287252_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g287253_ 2)))
                    (error "Context expects 2 values" _g287253_)))
              (let ((_ssi-code282094_
                     (let () (declare (not safe)) (##vector-ref _g287252_ 0)))
                    (_phi-code282095_
                     (let () (declare (not safe)) (##vector-ref _g287252_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi282091_ _ssi-code282094_))
                  (let ((_threads282100_
                         (map (lambda (_code282097_)
                                (let ((__tmp287254
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi282092_
                                            _code282097_)))))
                                  (declare (not safe))
                                  (spawn __tmp287254)))
                              _phi-code282095_)))
                    (for-each gxc#join! _threads282100_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx282072_)
        (let* ((_path282074_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx282072_ '#f '".ssxi.ss")))
               (_code282076_
                (let ((__tmp287255
                       (##structure-ref
                        _ctx282072_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp287255)))
               (_idstr282078_
                (symbol->string
                 (##structure-ref _ctx282072_ '1 gx#expander-context::t '#f)))
               (_pkg282085_
                (let ((_$e282080_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr282078_ '#\/))))
                  (if _$e282080_
                      ((lambda (_x282083_)
                         (string->symbol
                          (substring _idstr282078_ '0 _x282083_)))
                       _$e282080_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path282074_))
          (let ((__tmp287256
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg282085_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg282085_))
                       '#!void)
                   (newline)
                   (pretty-print _code282076_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path282074_ __tmp287256)))))
    (define gxc#generate-meta-code
      (lambda (_ctx282065_)
        (let* ((_state282067_
                (let ((__obj287014
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj287014 _ctx282065_)
                  __obj287014))
               (_ssi-code282069_
                (let ((__tmp287257
                       (##structure-ref
                        _ctx282065_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp287257 _state282067_))))
          (values _ssi-code282069_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state282067_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx282058_)
        (let ((_lifts282060_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp287260
                 (lambda ()
                   (let ((_code282063_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx282058_))))
                     (if (let ((__tmp287264 (unbox _lifts282060_)))
                           (declare (not safe))
                           (null? __tmp287264))
                         _code282063_
                         (let ((__tmp287261
                                (let ((__tmp287263
                                       (let ()
                                         (declare (not safe))
                                         (cons _code282063_ '())))
                                      (__tmp287262
                                       (reverse (unbox _lifts282060_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp287263 __tmp287262))))
                           (declare (not safe))
                           (cons 'begin __tmp287261))))))
                (__tmp287259
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp287258
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp287260
             gxc#current-compile-lift
             _lifts282060_
             gxc#current-compile-marks
             __tmp287259
             gxc#current-compile-identifiers
             __tmp287258)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx282054_)
        (let ((_modules282056_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp287265
                 (##structure-ref _ctx282054_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp287265 _modules282056_))
          (reverse (unbox _modules282056_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path282037_ _code282038_ _phi?282039_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path282037_))
        (let ((__tmp287266
               (lambda ()
                 (pretty-print
                  (let ((__tmp287267
                         (let ((__tmp287274
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp287268
                                (let ((__tmp287273
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp287269
                                       (let ((__tmp287272
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp287270
                                              (let ((__tmp287271
                                                     (if _phi?282039_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp287271))))
                                         (declare (not safe))
                                         (cons __tmp287272 __tmp287270))))
                                  (declare (not safe))
                                  (cons __tmp287273 __tmp287269))))
                           (declare (not safe))
                           (cons __tmp287274 __tmp287268))))
                    (declare (not safe))
                    (cons 'declare __tmp287267)))
                 (pretty-print _code282038_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path282037_ __tmp287266))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path282037_ _phi?282039_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path282037_))))
    (define gxc#compile-scm-file__0
      (lambda (_path282045_ _code282046_)
        (let ((_phi?282048_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path282045_ _code282046_ _phi?282048_))))
    (define gxc#compile-scm-file
      (lambda _g287276_
        (let ((_g287275_ (let () (declare (not safe)) (##length _g287276_))))
          (cond ((let () (declare (not safe)) (##fx= _g287275_ 2))
                 (apply (lambda (_path282045_ _code282046_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path282045_
                             _code282046_)))
                        _g287276_))
                ((let () (declare (not safe)) (##fx= _g287275_ 3))
                 (apply (lambda (_path282050_ _code282051_ _phi?282052_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path282050_
                             _code282051_
                             _phi?282052_)))
                        _g287276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g287276_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?281938_)
        (let _lp281940_ ((_rest281942_ (gxc#current-compile-gsc-options))
                         (_opts281943_ '()))
          (let* ((_rest281944281964_ _rest281942_)
                 (_else281948281972_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?281938_))
                             (gxc#current-compile-debug))
                        (let ((__tmp287277
                               (let ((__tmp287278 (reverse _opts281943_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp287278))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp287277))
                        (reverse _opts281943_)))))
            (let ((_K281958282015_
                   (lambda (_rest282013_)
                     (let ()
                       (declare (not safe))
                       (_lp281940_ _rest282013_ _opts281943_))))
                  (_K281953281997_
                   (lambda (_rest281995_)
                     (let ()
                       (declare (not safe))
                       (_lp281940_ _rest281995_ _opts281943_))))
                  (_K281950281979_
                   (lambda (_rest281976_ _opt281977_)
                     (let ((__tmp287279
                            (let ()
                              (declare (not safe))
                              (cons _opt281977_ _opts281943_))))
                       (declare (not safe))
                       (_lp281940_ _rest281976_ __tmp287279)))))
              (if (let () (declare (not safe)) (##pair? _rest281944281964_))
                  (let ((_tl281960282020_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest281944281964_)))
                        (_hd281959282018_
                         (let ()
                           (declare (not safe))
                           (##car _rest281944281964_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd281959282018_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl281960282020_))
                            (let* ((_tl281962282023_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl281960282020_)))
                                   (_rest282026_ _tl281962282023_))
                              (declare (not safe))
                              (_K281958282015_ _rest282026_))
                            (let ((_opt281987_ _hd281959282018_)
                                  (_rest281989_ _tl281960282020_))
                              (let ()
                                (declare (not safe))
                                (_K281950281979_ _rest281989_ _opt281987_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd281959282018_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl281960282020_))
                                (let* ((_tl281957282005_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl281960282020_)))
                                       (_rest282008_ _tl281957282005_))
                                  (declare (not safe))
                                  (_K281953281997_ _rest282008_))
                                (let ((_opt281987_ _hd281959282018_)
                                      (_rest281989_ _tl281960282020_))
                                  (let ()
                                    (declare (not safe))
                                    (_K281950281979_
                                     _rest281989_
                                     _opt281987_))))
                            (let ((_opt281987_ _hd281959282018_)
                                  (_rest281989_ _tl281960282020_))
                              (let ()
                                (declare (not safe))
                                (_K281950281979_ _rest281989_ _opt281987_))))))
                  (let () (declare (not safe)) (_else281948281972_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?282032_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?282032_))))
    (define gxc#gsc-link-options
      (lambda _g287281_
        (let ((_g287280_ (let () (declare (not safe)) (##length _g287281_))))
          (cond ((let () (declare (not safe)) (##fx= _g287280_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g287281_))
                ((let () (declare (not safe)) (##fx= _g287280_ 1))
                 (apply (lambda (_phi?282034_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?282034_)))
                        _g287281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g287281_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?281839_)
        (let _lp281841_ ((_rest281843_ (gxc#current-compile-gsc-options))
                         (_opts281844_ '()))
          (let* ((_rest281845281865_ _rest281843_)
                 (_else281849281873_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?281839_))
                             (gxc#current-compile-debug))
                        (let ((__tmp287282
                               (let ((__tmp287283 (reverse _opts281844_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp287283))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp287282))
                        (reverse _opts281844_)))))
            (let ((_K281859281912_
                   (lambda (_rest281909_ _opt281910_)
                     (let ((__tmp287284
                            (let ((__tmp287285
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts281844_))))
                              (declare (not safe))
                              (cons _opt281910_ __tmp287285))))
                       (declare (not safe))
                       (_lp281841_ _rest281909_ __tmp287284))))
                  (_K281854281893_
                   (lambda (_rest281891_)
                     (let ()
                       (declare (not safe))
                       (_lp281841_ _rest281891_ _opts281844_))))
                  (_K281851281879_
                   (lambda (_rest281877_)
                     (let ()
                       (declare (not safe))
                       (_lp281841_ _rest281877_ _opts281844_)))))
              (if (let () (declare (not safe)) (##pair? _rest281845281865_))
                  (let ((_tl281861281917_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest281845281865_)))
                        (_hd281860281915_
                         (let ()
                           (declare (not safe))
                           (##car _rest281845281865_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd281860281915_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl281861281917_))
                            (let ((_tl281863281922_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl281861281917_)))
                                  (_hd281862281920_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl281861281917_))))
                              (let ((_opt281925_ _hd281862281920_)
                                    (_rest281927_ _tl281863281922_))
                                (let ()
                                  (declare (not safe))
                                  (_K281859281912_ _rest281927_ _opt281925_))))
                            (let ((_rest281885_ _tl281861281917_))
                              (declare (not safe))
                              (_K281851281879_ _rest281885_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd281860281915_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl281861281917_))
                                (let* ((_tl281858281901_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl281861281917_)))
                                       (_rest281904_ _tl281858281901_))
                                  (declare (not safe))
                                  (_K281854281893_ _rest281904_))
                                (let ((_rest281885_ _tl281861281917_))
                                  (declare (not safe))
                                  (_K281851281879_ _rest281885_)))
                            (let ((_rest281885_ _tl281861281917_))
                              (declare (not safe))
                              (_K281851281879_ _rest281885_)))))
                  (let () (declare (not safe)) (_else281849281873_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?281933_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?281933_))))
    (define gxc#gsc-cc-options
      (lambda _g287287_
        (let ((_g287286_ (let () (declare (not safe)) (##length _g287287_))))
          (cond ((let () (declare (not safe)) (##fx= _g287286_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g287287_))
                ((let () (declare (not safe)) (##fx= _g287286_ 1))
                 (apply (lambda (_phi?281935_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?281935_)))
                        _g287287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g287287_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir281834_)
        (let* ((_user-staticdir281836_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp287288
                (let ((__tmp287289
                       (string-append
                        '"-I "
                        _staticdir281834_
                        '" -I "
                        _user-staticdir281836_)))
                  (declare (not safe))
                  (cons __tmp287289 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp287288))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp281746_ ((_rest281748_ (gxc#current-compile-gsc-options))
                         (_opts281749_ '()))
          (let* ((_rest281750281770_ _rest281748_)
                 (_else281754281778_ (lambda () _opts281749_)))
            (let ((_K281764281821_
                   (lambda (_rest281819_)
                     (let ()
                       (declare (not safe))
                       (_lp281746_ _rest281819_ _opts281749_))))
                  (_K281759281799_
                   (lambda (_rest281796_ _opt281797_)
                     (let ((__tmp287290
                            (append _opts281749_
                                    (let ((__tmp287291
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt281797_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp287291)))))
                       (declare (not safe))
                       (_lp281746_ _rest281796_ __tmp287290))))
                  (_K281756281784_
                   (lambda (_rest281782_)
                     (let ()
                       (declare (not safe))
                       (_lp281746_ _rest281782_ _opts281749_)))))
              (if (let () (declare (not safe)) (##pair? _rest281750281770_))
                  (let ((_tl281766281826_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest281750281770_)))
                        (_hd281765281824_
                         (let ()
                           (declare (not safe))
                           (##car _rest281750281770_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd281765281824_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl281766281826_))
                            (let* ((_tl281768281829_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl281766281826_)))
                                   (_rest281832_ _tl281768281829_))
                              (declare (not safe))
                              (_K281764281821_ _rest281832_))
                            (let ((_rest281790_ _tl281766281826_))
                              (declare (not safe))
                              (_K281756281784_ _rest281790_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd281765281824_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl281766281826_))
                                (let ((_tl281763281809_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl281766281826_)))
                                      (_hd281762281807_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl281766281826_))))
                                  (let ((_opt281812_ _hd281762281807_)
                                        (_rest281814_ _tl281763281809_))
                                    (let ()
                                      (declare (not safe))
                                      (_K281759281799_
                                       _rest281814_
                                       _opt281812_))))
                                (let ((_rest281790_ _tl281766281826_))
                                  (declare (not safe))
                                  (_K281756281784_ _rest281790_)))
                            (let ((_rest281790_ _tl281766281826_))
                              (declare (not safe))
                              (_K281756281784_ _rest281790_)))))
                  (let () (declare (not safe)) (_else281754281778_))))))))
    (define gxc#not-string-empty?
      (lambda (_str281743_)
        (let ((__tmp287292
               (let () (declare (not safe)) (string-empty? _str281743_))))
          (declare (not safe))
          (not __tmp287292))))
    (define gxc#gsc-compile-file
      (lambda (_path281711_ _phi?281712_)
        (letrec ((_gsc-link-path281714_
                  (lambda (_base-path281735_)
                    (let _lp281737_ ((_n281739_ '1))
                      (let ((_path281741_
                             (string-append
                              _base-path281735_
                              '".o"
                              (number->string _n281739_))))
                        (if (file-exists? _path281741_)
                            (let ((__tmp287293
                                   (let ()
                                     (declare (not safe))
                                     (+ _n281739_ '1))))
                              (declare (not safe))
                              (_lp281737_ __tmp287293))
                            _path281741_))))))
          (let* ((_base-path281716_ (path-strip-extension _path281711_))
                 (_path-c281718_ (string-append _base-path281716_ '".c"))
                 (_path-o281720_ (string-append _base-path281716_ '".o"))
                 (_link-path281722_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path281714_ _base-path281716_)))
                 (_link-path-c281724_ (string-append _link-path281722_ '".c"))
                 (_link-path-o281726_ (string-append _link-path281722_ '".o"))
                 (_gsc-link-opts281728_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?281712_)))
                 (_gsc-cc-opts281730_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?281712_)))
                 (_gcc-ld-opts281732_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp287300 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp287294
                   (let ((__tmp287295
                          (let ((__tmp287296
                                 (let ((__tmp287297
                                        (let ((__tmp287298
                                               (let ((__tmp287299
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path281711_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp287299
                                                         _gsc-link-opts281728_))))
                                          (declare (not safe))
                                          (cons _link-path-c281724_
                                                __tmp287298))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp287297))))
                            (declare (not safe))
                            (cons '"-flat" __tmp287296))))
                     (declare (not safe))
                     (cons '"-link" __tmp287295))))
              (declare (not safe))
              (gxc#invoke __tmp287300 __tmp287294 'stdout-redirection: '#t))
            (let ((__tmp287307 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp287301
                   (let ((__tmp287302
                          (let ((__tmp287303
                                 (let ((__tmp287304
                                        (let ((__tmp287305
                                               (let ((__tmp287306
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c281724_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c281718_
                                                       __tmp287306))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp287305
                                                  _gsc-cc-opts281730_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp287304))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp287303))))
                     (declare (not safe))
                     (cons '"-obj" __tmp287302))))
              (declare (not safe))
              (gxc#invoke __tmp287307 __tmp287301 'stdout-redirection: '#t))
            (let ((__tmp287313 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp287308
                   (let ((__tmp287309
                          (let ((__tmp287310
                                 (let ((__tmp287311
                                        (let ((__tmp287312
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o281726_
                                                       _gcc-ld-opts281732_))))
                                          (declare (not safe))
                                          (cons _path-o281720_ __tmp287312))))
                                   (declare (not safe))
                                   (cons _link-path281722_ __tmp287311))))
                            (declare (not safe))
                            (cons '"-o" __tmp287310))))
                     (declare (not safe))
                     (cons '"-shared" __tmp287309))))
              (declare (not safe))
              (gxc#invoke __tmp287313 __tmp287308))
            (for-each
             delete-file
             (let ((__tmp287314
                    (let ((__tmp287315
                           (let ((__tmp287316
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o281726_ '()))))
                             (declare (not safe))
                             (cons _link-path-c281724_ __tmp287316))))
                      (declare (not safe))
                      (cons _path-o281720_ __tmp287315))))
               (declare (not safe))
               (cons _path-c281718_ __tmp287314)))))))
    (define gxc#compile-output-file
      (lambda (_ctx281682_ _n281683_ _ext281684_)
        (letrec ((_module-relative-path281686_
                  (lambda (_ctx281709_)
                    (path-strip-directory
                     (let ((__tmp287317
                            (##structure-ref
                             _ctx281709_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp287317)))))
                 (_module-source-directory281687_
                  (lambda (_ctx281705_)
                    (path-directory
                     (let ((_mpath281707_
                            (##structure-ref
                             _ctx281705_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath281707_))
                           _mpath281707_
                           (let ()
                             (declare (not safe))
                             (last _mpath281707_)))))))
                 (_section-string281688_
                  (lambda (_n281703_)
                    (if (let () (declare (not safe)) (number? _n281703_))
                        (number->string _n281703_)
                        (if (let () (declare (not safe)) (symbol? _n281703_))
                            (symbol->string _n281703_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n281703_))
                                _n281703_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n281703_)))))))
                 (_file-name281689_
                  (lambda (_path281701_)
                    (if _n281683_
                        (string-append
                         _path281701_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string281688_ _n281683_))
                         _ext281684_)
                        (string-append _path281701_ _ext281684_))))
                 (_file-path281690_
                  (lambda ()
                    (let ((_$e281696_ (gxc#current-compile-output-dir)))
                      (if _$e281696_
                          ((lambda (_outdir281699_)
                             (path-expand
                              (let ((__tmp287319
                                     (let ((__tmp287320
                                            (##structure-ref
                                             _ctx281682_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp287320))))
                                (declare (not safe))
                                (_file-name281689_ __tmp287319))
                              _outdir281699_))
                           _$e281696_)
                          (path-expand
                           (let ((__tmp287318
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path281686_
                                     _ctx281682_))))
                             (declare (not safe))
                             (_file-name281689_ __tmp287318))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory281687_
                              _ctx281682_))))))))
          (let ((_path281692_
                 (let () (declare (not safe)) (_file-path281690_))))
            (let ((__tmp287321
                   (lambda ()
                     (let ((__tmp287322 (path-directory _path281692_)))
                       (declare (not safe))
                       (create-directory* __tmp287322)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp287321))
            _path281692_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx281664_)
        (letrec ((_file-name281666_
                  (lambda (_id281680_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id281680_))
                     '".scm")))
                 (_file-path281667_
                  (lambda ()
                    (let* ((_file281673_
                            (let ((__tmp287323
                                   (##structure-ref
                                    _ctx281664_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name281666_ __tmp287323)))
                           (_$e281675_ (gxc#current-compile-output-dir)))
                      (if _$e281675_
                          ((lambda (_outdir281678_)
                             (path-expand
                              _file281673_
                              (path-expand '"static" _outdir281678_)))
                           _$e281675_)
                          (path-expand _file281673_ '"static"))))))
          (let ((_path281669_
                 (let () (declare (not safe)) (_file-path281667_))))
            (let ((__tmp287324
                   (lambda ()
                     (let ((__tmp287325 (path-directory _path281669_)))
                       (declare (not safe))
                       (create-directory* __tmp287325)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp287324))
            _path281669_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx281658_ _opts281659_)
        (let ((_$e281661_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts281659_))))
          (if _$e281661_
              (values _$e281661_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx281658_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr281651_)
        (if (let () (declare (not safe)) (string? _idstr281651_))
            (let* ((_str281653_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr281651_)))
                   (_strs281655_
                    (let ()
                      (declare (not safe))
                      (string-split _str281653_ '#\/))))
              (let () (declare (not safe)) (string-join _strs281655_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr281651_))
                (let ((__tmp287326 (symbol->string _idstr281651_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp287326))
                (error '"Bad module id" _idstr281651_)))))
    (define gxc#invoke__%
      (lambda (_g287327_
               _stdout-redirection281612281616_
               _stderr-redirection281613281618_
               _program281620_
               _args281621_)
        (let* ((_stdout-redirection281623_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection281612281616_ absent-value))
                    '#f
                    _stdout-redirection281612281616_))
               (_stderr-redirection281625_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection281613281618_ absent-value))
                    '#f
                    _stderr-redirection281613281618_)))
          (let ((__tmp287328
                 (let ()
                   (declare (not safe))
                   (cons _program281620_ _args281621_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp287328))
          (let* ((_proc281627_
                  (open-process
                   (let ((__tmp287329
                          (let ((__tmp287330
                                 (let ((__tmp287331
                                        (let ((__tmp287332
                                               (let ((__tmp287333
                                                      (let ((__tmp287334
                                                             (let ((__tmp287335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection281625_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp287335))))
                (declare (not safe))
                (cons _stdout-redirection281623_ __tmp287334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp287333))))
                                          (declare (not safe))
                                          (cons _args281621_ __tmp287332))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp287331))))
                            (declare (not safe))
                            (cons _program281620_ __tmp287330))))
                     (declare (not safe))
                     (cons 'path: __tmp287329))))
                 (_output281632_
                  (if (or _stdout-redirection281623_
                          _stderr-redirection281625_)
                      (read-line _proc281627_ '#f)
                      '#f)))
            (let ((_status281635_ (process-status _proc281627_)))
              (close-port _proc281627_)
              (if (let () (declare (not safe)) (zero? _status281635_))
                  '#!void
                  (begin
                    (display _output281632_)
                    (let ((__tmp287336
                           (let ()
                             (declare (not safe))
                             (cons _program281620_ _args281621_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp287336
                       _status281635_)))))))))
    (define gxc#invoke__@
      (lambda (_keys281611281640_ . _args281642_)
        (apply gxc#invoke__%
               _keys281611281640_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys281611281640_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys281611281640_
                  'stderr-redirection:
                  absent-value))
               _args281642_)))
    (define gxc#invoke
      (lambda _args281614281648_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args281614281648_)))
    (define gxc#join!
      (lambda (_thread281605_)
        (let ((__tmp287338
               (lambda (_exn281607_)
                 (if (uncaught-exception? _exn281607_)
                     (raise (uncaught-exception-reason _exn281607_))
                     (raise _exn281607_))))
              (__tmp287337 (lambda () (thread-join! _thread281605_))))
          (declare (not safe))
          (with-catch __tmp287338 __tmp287337))))))
