(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708202854)
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
      (lambda (_path282850_ _fun282851_)
        (with-output-to-file
         (let ((__tmp287011
                (let ()
                  (declare (not safe))
                  (cons _path282850_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp287011))
         _fun282851_)))
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
      (lambda (_gerbil-libdir282845_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir282845_)))
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
      (lambda (_dir282843_) (delete-file-or-directory _dir282843_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath282817_ _opts282818_)
        (if (let () (declare (not safe)) (string? _srcpath282817_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath282817_)))
        (let ((_outdir282820_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts282818_)))
              (_invoke-gsc?282821_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts282818_)))
              (_gsc-options282822_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts282818_)))
              (_keep-scm?282823_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts282818_)))
              (_verbosity282824_
               (let () (declare (not safe)) (pgetq 'verbose: _opts282818_)))
              (_optimize282825_
               (let () (declare (not safe)) (pgetq 'optimize: _opts282818_)))
              (_debug282826_
               (let () (declare (not safe)) (pgetq 'debug: _opts282818_)))
              (_gen-ssxi282827_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts282818_))))
          (if _outdir282820_
              (let ((__tmp287012
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir282820_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp287012))
              '#!void)
          (if _optimize282825_
              (let ((__tmp287013
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp287013))
              '#!void)
          (let ((__tmp287017
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath282817_))
                   (let ((__tmp287018
                          (let ((__tmp287019
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath282817_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp287019))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp287018))))
                (__tmp287016
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp287014
                 (let ((__tmp287015
                        (let ()
                          (declare (not safe))
                          (cons _srcpath282817_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp287015))))
            (declare (not safe))
            (call-with-parameters
             __tmp287017
             gxc#current-compile-output-dir
             _outdir282820_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?282821_
             gxc#current-compile-gsc-options
             _gsc-options282822_
             gxc#current-compile-keep-scm
             _keep-scm?282823_
             gxc#current-compile-verbose
             _verbosity282824_
             gxc#current-compile-optimize
             _optimize282825_
             gxc#current-compile-debug
             _debug282826_
             gxc#current-compile-generate-ssxi
             _gen-ssxi282827_
             gxc#current-compile-timestamp
             __tmp287016
             gxc#current-compile-context
             __tmp287014
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath282836_)
        (let ((_opts282838_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath282836_ _opts282838_))))
    (define gxc#compile-module
      (lambda _g287021_
        (let ((_g287020_ (let () (declare (not safe)) (##length _g287021_))))
          (cond ((let () (declare (not safe)) (##fx= _g287020_ 1))
                 (apply (lambda (_srcpath282836_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath282836_)))
                        _g287021_))
                ((let () (declare (not safe)) (##fx= _g287020_ 2))
                 (apply (lambda (_srcpath282840_ _opts282841_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath282840_
                             _opts282841_)))
                        _g287021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g287021_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath282793_ _opts282794_)
        (if (let () (declare (not safe)) (string? _srcpath282793_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath282793_)))
        (let ((_outdir282796_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts282794_)))
              (_invoke-gsc?282797_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts282794_)))
              (_gsc-options282798_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts282794_)))
              (_keep-scm?282799_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts282794_)))
              (_verbosity282800_
               (let () (declare (not safe)) (pgetq 'verbose: _opts282794_)))
              (_debug282801_
               (let () (declare (not safe)) (pgetq 'debug: _opts282794_))))
          (if _outdir282796_
              (let ((__tmp287022
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir282796_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp287022))
              '#!void)
          (let ((__tmp287026
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath282793_))
                   (let ((__tmp287027
                          (let ((__tmp287028
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath282793_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp287028))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp287027
                      _opts282794_))))
                (__tmp287025
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp287023
                 (let ((__tmp287024
                        (let ()
                          (declare (not safe))
                          (cons _srcpath282793_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp287024))))
            (declare (not safe))
            (call-with-parameters
             __tmp287026
             gxc#current-compile-output-dir
             _outdir282796_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?282797_
             gxc#current-compile-gsc-options
             _gsc-options282798_
             gxc#current-compile-keep-scm
             _keep-scm?282799_
             gxc#current-compile-verbose
             _verbosity282800_
             gxc#current-compile-debug
             _debug282801_
             gxc#current-compile-timestamp
             __tmp287025
             gxc#current-compile-context
             __tmp287023
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath282809_)
        (let ((_opts282811_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath282809_ _opts282811_))))
    (define gxc#compile-exe
      (lambda _g287030_
        (let ((_g287029_ (let () (declare (not safe)) (##length _g287030_))))
          (cond ((let () (declare (not safe)) (##fx= _g287029_ 1))
                 (apply (lambda (_srcpath282809_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath282809_)))
                        _g287030_))
                ((let () (declare (not safe)) (##fx= _g287029_ 2))
                 (apply (lambda (_srcpath282813_ _opts282814_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath282813_ _opts282814_)))
                        _g287030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g287030_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx282789_ _opts282790_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts282790_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx282789_
               _opts282790_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx282789_
               _opts282790_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx282672_ _opts282673_)
        (letrec ((_generate-stub282675_
                  (lambda (_builtin-modules282785_)
                    (let ((_mod-main282787_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx282672_ 'main))))
                      (write (let ((__tmp287031
                                    (let ((__tmp287032
                                           (let ((__tmp287033
                                                  (let ((__tmp287034
                                                         (let ((__tmp287036
                                                                (let ((__tmp287037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules282785_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp287037)))
                       (__tmp287035
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp287036 __tmp287035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp287034))))
                                             (declare (not safe))
                                             (cons __tmp287033 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp287032))))
                               (declare (not safe))
                               (cons 'define __tmp287031)))
                      (write (let ((__tmp287038
                                    (let ((__tmp287077
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp287039
                                           (let ((__tmp287040
                                                  (let ((__tmp287041
                                                         (let ((__tmp287065
                                                                (let ((__tmp287066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287067
                                      (let ((__tmp287075
                                             (let ((__tmp287076
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp287076)))
                                            (__tmp287068
                                             (let ((__tmp287069
                                                    (let ((__tmp287070
                                                           (let ((__tmp287071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287072
                                 (let ((__tmp287073
                                        (let ((__tmp287074
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp287074 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp287073))))
                            (declare (not safe))
                            (cons __tmp287072 '()))))
                     (declare (not safe))
                     (cons _mod-main282787_ __tmp287071))))
              (declare (not safe))
              (cons 'apply __tmp287070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287069 '()))))
                                        (declare (not safe))
                                        (cons __tmp287075 __tmp287068))))
                                 (declare (not safe))
                                 (cons '() __tmp287067))))
                          (declare (not safe))
                          (cons 'lambda __tmp287066)))
                       (__tmp287042
                        (let ((__tmp287043
                               (let ((__tmp287044
                                      (let ((__tmp287045
                                             (let ((__tmp287056
                                                    (let ((__tmp287057
                                                           (let ((__tmp287058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287059
                                 (let ((__tmp287060
                                        (let ((__tmp287061
                                               (let ((__tmp287062
                                                      (let ((__tmp287063
                                                             (let ((__tmp287064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp287064 '()))))
                (declare (not safe))
                (cons 'force-output __tmp287063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp287062 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp287061))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp287060))))
                            (declare (not safe))
                            (cons __tmp287059 '()))))
                     (declare (not safe))
                     (cons 'void __tmp287058))))
              (declare (not safe))
              (cons 'with-catch __tmp287057)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp287046
                                                    (let ((__tmp287047
                                                           (let ((__tmp287048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp287049
                                 (let ((__tmp287050
                                        (let ((__tmp287051
                                               (let ((__tmp287052
                                                      (let ((__tmp287053
                                                             (let ((__tmp287054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp287055
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp287055 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp287054))))
                (declare (not safe))
                (cons __tmp287053 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp287052))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp287051))))
                                   (declare (not safe))
                                   (cons __tmp287050 '()))))
                            (declare (not safe))
                            (cons 'void __tmp287049))))
                     (declare (not safe))
                     (cons 'with-catch __tmp287048))))
              (declare (not safe))
              (cons __tmp287047 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp287056
                                                     __tmp287046))))
                                        (declare (not safe))
                                        (cons '() __tmp287045))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp287044))))
                          (declare (not safe))
                          (cons __tmp287043 '()))))
                   (declare (not safe))
                   (cons __tmp287065 __tmp287042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp287041))))
                                             (declare (not safe))
                                             (cons __tmp287040 '()))))
                                      (declare (not safe))
                                      (cons __tmp287077 __tmp287039))))
                               (declare (not safe))
                               (cons 'define __tmp287038)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts282676_
                  (lambda (_libgerbil282783_)
                    (call-with-input-file
                     (string-append _libgerbil282783_ '".ldd")
                     read)))
                 (_replace-extension282677_
                  (lambda (_path282780_ _ext282781_)
                    (string-append
                     (path-strip-extension _path282780_)
                     _ext282781_)))
                 (_not-exclude-module?282678_
                  (lambda (_ctx282776_)
                    (let ((_id-str282778_
                           (symbol->string
                            (##structure-ref
                             _ctx282776_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp287079
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str282778_))))
                            (declare (not safe))
                            (not __tmp287079))
                          (let ((__tmp287078
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str282778_))))
                            (declare (not safe))
                            (not __tmp287078))
                          '#f))))
                 (_not-file-empty?282679_
                  (lambda (_path282774_)
                    (let ((__tmp287080
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path282774_))))
                      (declare (not safe))
                      (not __tmp287080))))
                 (_compile-stub282680_
                  (lambda (_output-scm282687_ _output-bin282688_)
                    (let* ((_gerbil-home282690_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir282692_
                            (path-expand '"lib" _gerbil-home282690_))
                           (_gerbil-staticdir282694_
                            (path-expand '"static" _gerbil-libdir282692_))
                           (_gxlink282696_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir282692_))
                           (_tmp282698_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path282702_
                            (lambda (_f282700_)
                              (path-expand
                               (path-strip-directory _f282700_)
                               _tmp282698_)))
                           (_deps282704_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx282672_)))
                           (_deps282706_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?282678_
                                      _deps282704_)))
                           (_src-deps-scm282708_
                            (map gxc#find-static-module-file _deps282706_))
                           (_src-deps-scm282710_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?282679_
                                      _src-deps-scm282708_)))
                           (_src-deps-scm282712_
                            (map path-expand _src-deps-scm282710_))
                           (_deps-scm282714_
                            (map _tmp-path282702_ _src-deps-scm282712_))
                           (_deps-c282720_
                            (map (lambda (_g282715282717_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension282677_
                                      _g282715282717_
                                      '".c")))
                                 _deps-scm282714_))
                           (_deps-o282726_
                            (map (lambda (_g282721282723_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension282677_
                                      _g282721282723_
                                      '".o")))
                                 _deps-scm282714_))
                           (_src-bin-scm282728_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx282672_)))
                           (_src-bin-scm282730_
                            (path-expand _src-bin-scm282728_))
                           (_bin-scm282732_
                            (let ()
                              (declare (not safe))
                              (_tmp-path282702_ _src-bin-scm282730_)))
                           (_bin-c282734_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282677_
                               _bin-scm282732_
                               '".c")))
                           (_bin-o282736_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282677_
                               _bin-scm282732_
                               '".o")))
                           (_output-bin282738_
                            (path-expand _output-bin282688_))
                           (_output-scm282740_
                            (path-expand _output-scm282687_))
                           (_output-c282742_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282677_
                               _output-scm282740_
                               '".c")))
                           (_output-o282744_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282677_
                               _output-scm282740_
                               '".o")))
                           (_output_-c282746_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282677_
                               _output-scm282740_
                               '"_.c")))
                           (_output_-o282748_
                            (let ()
                              (declare (not safe))
                              (_replace-extension282677_
                               _output-scm282740_
                               '"_.o")))
                           (_gsc-link-opts282750_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts282752_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts282754_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir282694_)))
                           (_output-ld-opts282756_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a282758_
                            (path-expand '"libgerbil.a" _gerbil-libdir282692_))
                           (_libgerbil.so282760_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir282692_))
                           (_libgerbil-ld-opts282762_
                            (if (file-exists? _libgerbil.so282760_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts282676_
                                   _libgerbil.so282760_))
                                (if (file-exists? _libgerbil.a282758_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts282676_
                                       _libgerbil.a282758_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a282758_
                                       _libgerbil.so282760_)))))
                           (_rpath282764_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir282692_)))
                           (_builtin-modules282768_
                            (map (lambda (_mod282766_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod282766_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx282672_ _deps282706_)))))
                      (let ((__tmp287081
                             (lambda ()
                               (let ((__tmp287082
                                      (path-directory _output-bin282738_)))
                                 (declare (not safe))
                                 (create-directory* __tmp287082)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp287081))
                      (let ((__tmp287083
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub282675_
                                  _builtin-modules282768_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm282740_
                         __tmp287083))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp287084
                                   (lambda () (create-directory _tmp282698_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp287084))
                            (for-each
                             copy-file
                             _src-deps-scm282712_
                             _deps-scm282714_)
                            (copy-file _src-bin-scm282730_ _bin-scm282732_)
                            (let ((__tmp287092
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp287085
                                   (let ((__tmp287086
                                          (let ((__tmp287087
                                                 (let ((__tmp287088
                                                        (let ((__tmp287089
                                                               (let ((__tmp287090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287091
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm282740_ '()))))
                                (declare (not safe))
                                (cons _bin-scm282732_ __tmp287091))))
                         (declare (not safe))
                         (foldr1 cons __tmp287090 _deps-scm282714_))))
                  (declare (not safe))
                  (foldr1 cons __tmp287089 _gsc-link-opts282750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink282696_
                                                         __tmp287088))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp287087))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp287086))))
                              (declare (not safe))
                              (gxc#invoke __tmp287092 __tmp287085))
                            (let ((__tmp287100
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp287093
                                   (let ((__tmp287094
                                          (let ((__tmp287095
                                                 (let ((__tmp287096
                                                        (let ((__tmp287097
                                                               (let ((__tmp287098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287099
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c282746_ '()))))
                                (declare (not safe))
                                (cons _output-c282742_ __tmp287099))))
                         (declare (not safe))
                         (cons _bin-c282734_ __tmp287098))))
                  (declare (not safe))
                  (foldr1 cons __tmp287097 _deps-c282720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp287096
                                                           _gsc-static-opts282754_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp287095
                                                    _gsc-cc-opts282752_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp287094))))
                              (declare (not safe))
                              (gxc#invoke __tmp287100 __tmp287093))
                            (let ((__tmp287113
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp287101
                                   (let ((__tmp287102
                                          (let ((__tmp287103
                                                 (let ((__tmp287104
                                                        (let ((__tmp287105
                                                               (let ((__tmp287106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287107
                                     (let ((__tmp287108
                                            (let ((__tmp287109
                                                   (let ((__tmp287110
                                                          (let ((__tmp287111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp287112
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts282762_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp287112))))
                    (declare (not safe))
                    (cons _gerbil-libdir282692_ __tmp287111))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp287110))))
                                              (declare (not safe))
                                              (cons _rpath282764_
                                                    __tmp287109))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp287108
                                               _output-ld-opts282756_))))
                                (declare (not safe))
                                (cons _output_-o282748_ __tmp287107))))
                         (declare (not safe))
                         (cons _output-o282744_ __tmp287106))))
                  (declare (not safe))
                  (cons _bin-o282736_ __tmp287105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp287104
                                                           _deps-o282726_))))
                                            (declare (not safe))
                                            (cons _output-bin282738_
                                                  __tmp287103))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp287102))))
                              (declare (not safe))
                              (gxc#invoke __tmp287113 __tmp287101))
                            (for-each
                             delete-file
                             (let ((__tmp287114
                                    (let ((__tmp287115
                                           (let ((__tmp287116
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o282748_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o282744_
                                                   __tmp287116))))
                                      (declare (not safe))
                                      (cons _output_-c282746_ __tmp287115))))
                               (declare (not safe))
                               (cons _output-c282742_ __tmp287114)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp282698_)))
                          '#!void)))))
          (let* ((_output-bin282682_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx282672_ _opts282673_)))
                 (_output-scm282684_
                  (string-append _output-bin282682_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub282680_ _output-scm282684_ _output-bin282682_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm282684_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx282497_ _opts282498_)
        (letrec ((_reset-declare282500_
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
                 (_generate-stub282501_
                  (lambda (_deps282663_)
                    (let ((_mod-main282665_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx282497_ 'main)))
                          (_reset-decl282666_
                           (let ()
                             (declare (not safe))
                             (_reset-declare282500_)))
                          (_user-decl282667_
                           (let ()
                             (declare (not safe))
                             (_user-declare282502_))))
                      (for-each
                       (lambda (_dep282669_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl282666_)
                         (newline)
                         (if _user-decl282667_
                             (begin (write _user-decl282667_) (newline))
                             '#!void)
                         (write (let ((__tmp287117
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep282669_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp287117)))
                         (newline))
                       _deps282663_)
                      (write (let ((__tmp287118
                                    (let ((__tmp287131
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp287119
                                           (let ((__tmp287127
                                                  (let ((__tmp287128
                                                         (let ((__tmp287129
                                                                (let ((__tmp287130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp287130))))
                   (declare (not safe))
                   (cons __tmp287129 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp287128)))
                                                 (__tmp287120
                                                  (let ((__tmp287121
                                                         (let ((__tmp287122
                                                                (let ((__tmp287123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp287124
                                      (let ((__tmp287125
                                             (let ((__tmp287126
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp287126 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp287125))))
                                 (declare (not safe))
                                 (cons __tmp287124 '()))))
                          (declare (not safe))
                          (cons _mod-main282665_ __tmp287123))))
                   (declare (not safe))
                   (cons 'apply __tmp287122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287121 '()))))
                                             (declare (not safe))
                                             (cons __tmp287127 __tmp287120))))
                                      (declare (not safe))
                                      (cons __tmp287131 __tmp287119))))
                               (declare (not safe))
                               (cons 'define __tmp287118)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare282502_
                  (lambda ()
                    (let* ((_gsc-opts282568_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts282498_)))
                           (_gsc-prelude282570_
                            (if _gsc-opts282568_
                                (member '"-prelude" _gsc-opts282568_)
                                '#f))
                           (_gsc-prelude282572_
                            (if _gsc-prelude282570_
                                (read (open-input-string
                                       (cadr _gsc-prelude282570_)))
                                '#f)))
                      (let _lp282575_ ((_rest282577_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude282572_ '())))
                                       (_user-decls282578_ '()))
                        (let* ((_rest282579282587_ _rest282577_)
                               (_else282581282595_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls282578_))
                                      '#f
                                      (let ((__tmp287132
                                             (reverse _user-decls282578_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp287132)))))
                               (_K282583282651_
                                (lambda (_rest282598_ _expr282599_)
                                  (let* ((_expr282600282612_ _expr282599_)
                                         (_else282603282620_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp282575_
                                               _rest282598_
                                               _user-decls282578_)))))
                                    (let ((_K282608282641_
                                           (lambda (_decls282639_)
                                             (let ((__tmp287133
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls282578_
                                                              _decls282639_))))
                                               (declare (not safe))
                                               (_lp282575_
                                                _rest282598_
                                                __tmp287133))))
                                          (_K282605282626_
                                           (lambda (_exprs282624_)
                                             (let ((__tmp287134
                                                    (append _exprs282624_
                                                            _rest282598_)))
                                               (declare (not safe))
                                               (_lp282575_
                                                __tmp287134
                                                _user-decls282578_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr282600282612_))
                                          (let ((_tl282610282646_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr282600282612_)))
                                                (_hd282609282644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr282600282612_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd282609282644_
                                                         'declare))
                                                (let ((_decls282649_
                                                       _tl282610282646_))
                                                  (declare (not safe))
                                                  (_K282608282641_
                                                   _decls282649_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd282609282644_
                                                             'begin))
                                                    (let ((_exprs282634_
                                                           _tl282610282646_))
                                                      (declare (not safe))
                                                      (_K282605282626_
                                                       _exprs282634_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else282603282620_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else282603282620_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest282579282587_))
                              (let ((_hd282584282654_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest282579282587_)))
                                    (_tl282585282656_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest282579282587_))))
                                (let* ((_expr282659_ _hd282584282654_)
                                       (_rest282661_ _tl282585282656_))
                                  (declare (not safe))
                                  (_K282583282651_ _rest282661_ _expr282659_)))
                              (let ()
                                (declare (not safe))
                                (_else282581282595_))))))))
                 (_compile-stub282503_
                  (lambda (_output-scm282510_ _output-bin282511_)
                    (let* ((_gerbil-home282513_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir282515_
                            (path-expand '"lib" _gerbil-home282513_))
                           (_runtime282517_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp282519_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home282513_))
                           (_include-gambit-sharp282521_
                            (string-append
                             '"(include \""
                             _gambit-sharp282519_
                             '"\")"))
                           (_bin-scm282523_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx282497_)))
                           (_deps282525_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx282497_)))
                           (_deps282527_
                            (map gxc#find-static-module-file _deps282525_))
                           (_deps282532_
                            (let ((__tmp287135
                                   (lambda (_$obj282529_)
                                     (let ((__tmp287136
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj282529_))))
                                       (declare (not safe))
                                       (not __tmp287136)))))
                              (declare (not safe))
                              (filter __tmp287135 _deps282527_)))
                           (_deps282536_
                            (let ((__tmp287137
                                   (lambda (_f282534_)
                                     (let ((__tmp287138
                                            (member _f282534_
                                                    _runtime282517_)))
                                       (declare (not safe))
                                       (not __tmp287138)))))
                              (declare (not safe))
                              (filter __tmp287137 _deps282532_)))
                           (_output-base282538_
                            (string-append
                             (path-strip-extension _output-scm282510_)))
                           (_output-c282540_
                            (string-append _output-base282538_ '".c"))
                           (_output-o282542_
                            (string-append _output-base282538_ '".o"))
                           (_output-c_282544_
                            (string-append _output-base282538_ '"_.c"))
                           (_output-o_282546_
                            (string-append _output-base282538_ '"_.o"))
                           (_gsc-link-opts282548_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts282550_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts282552_
                            (let ((__tmp287139
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir282515_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp287139)))
                           (_output-ld-opts282554_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros282556_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp287141
                                       (let ((__tmp287142
                                              (let ((__tmp287143
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp282521_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp287143))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp287142))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp287141))
                                (let ((__tmp287140
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp282521_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp287140))))
                           (_gsc-link-opts282558_
                            (append _gsc-link-opts282548_
                                    _gsc-gx-macros282556_))
                           (_rpath282560_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir282515_)))
                           (_default-ld-options282562_
                            (let ((__tmp287144
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp287144))))
                      (let ((__tmp287145
                             (lambda ()
                               (let ((__tmp287146
                                      (path-directory _output-bin282511_)))
                                 (declare (not safe))
                                 (create-directory* __tmp287146)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp287145))
                      (let ((__tmp287147
                             (lambda ()
                               (let ((__tmp287148
                                      (let ((__tmp287149
                                             (let ((__tmp287150
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm282523_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp287150
                                                       _deps282536_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp287149
                                                _runtime282517_))))
                                 (declare (not safe))
                                 (_generate-stub282501_ __tmp287148)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm282510_
                         __tmp287147))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp287156
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp287151
                                   (let ((__tmp287152
                                          (let ((__tmp287153
                                                 (let ((__tmp287154
                                                        (let ((__tmp287155
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm282510_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp287155 _gsc-link-opts282558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_282544_
                                                         __tmp287154))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp287153))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp287152))))
                              (declare (not safe))
                              (gxc#invoke __tmp287156 __tmp287151))
                            (let ((__tmp287162
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp287157
                                   (let ((__tmp287158
                                          (let ((__tmp287159
                                                 (let ((__tmp287160
                                                        (let ((__tmp287161
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_282544_ '()))))
                  (declare (not safe))
                  (cons _output-c282540_ __tmp287161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp287160
                                                           _gsc-static-opts282552_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp287159
                                                    _gsc-cc-opts282550_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp287158))))
                              (declare (not safe))
                              (gxc#invoke __tmp287162 __tmp287157))
                            (let ((__tmp287172
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp287163
                                   (let ((__tmp287164
                                          (let ((__tmp287165
                                                 (let ((__tmp287166
                                                        (let ((__tmp287167
                                                               (let ((__tmp287168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp287169
                                     (let ((__tmp287170
                                            (let ((__tmp287171
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options282562_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir282515_
                                                    __tmp287171))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp287170))))
                                (declare (not safe))
                                (cons _rpath282560_ __tmp287169))))
                         (declare (not safe))
                         (foldr1 cons __tmp287168 _output-ld-opts282554_))))
                  (declare (not safe))
                  (cons _output-o_282546_ __tmp287167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o282542_
                                                         __tmp287166))))
                                            (declare (not safe))
                                            (cons _output-bin282511_
                                                  __tmp287165))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp287164))))
                              (declare (not safe))
                              (gxc#invoke __tmp287172 __tmp287163)))
                          '#!void)))))
          (let* ((_output-bin282505_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx282497_ _opts282498_)))
                 (_output-scm282507_
                  (string-append _output-bin282505_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub282503_ _output-scm282507_ _output-bin282505_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm282507_))))))
    (define gxc#find-export-binding
      (lambda (_ctx282447_ _id282448_)
        (let ((_$e282494_
               (let ((__tmp287174
                      (lambda (_e282449282451_)
                        (let* ((_g282453282463_ _e282449282451_)
                               (_else282455282471_ (lambda () '#f))
                               (_K282457282475_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g282453282463_
                                 'gx#module-export::t))
                              (let* ((_e282458282478_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g282453282463_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e282459282481_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g282453282463_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e282460282484_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g282453282463_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e282460282484_ '0))
                                    (let ((_e282461282487_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g282453282463_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g282489282491_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g282489282491_
                                                    _id282448_)))
                                           _e282461282487_)
                                          (let ()
                                            (declare (not safe))
                                            (_K282457282475_))
                                          (let ()
                                            (declare (not safe))
                                            (_else282455282471_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else282455282471_))))
                              (let ()
                                (declare (not safe))
                                (_else282455282471_))))))
                     (__tmp287173
                      (##structure-ref
                       _ctx282447_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp287174 __tmp287173))))
          (if _$e282494_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e282494_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx282439_ _id282440_)
        (let ((_$e282442_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx282439_ _id282440_))))
          (if _$e282442_
              ((lambda (_bind282445_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind282445_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id282440_)))
                 (##structure-ref _bind282445_ '1 gx#binding::t '#f))
               _$e282442_)
              (let ((__tmp287175
                     (##structure-ref
                      _ctx282439_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp287175
                 _id282440_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx282326_)
        (letrec* ((_ht282328_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template282329_
                   (lambda (_in282391_ _phi282392_)
                     (let ((_iphi282394_
                            (fx+ _phi282392_
                                 (##direct-structure-ref
                                  _in282391_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports282395_
                            (##structure-ref
                             (##direct-structure-ref
                              _in282391_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp282397_ ((_rest282399_ _imports282395_)
                                        (_r282400_ '()))
                         (let* ((_rest282401282409_ _rest282399_)
                                (_else282403282417_ (lambda () _r282400_))
                                (_K282405282427_
                                 (lambda (_rest282420_ _in282421_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in282421_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi282394_))
                                           (let ((__tmp287182
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in282421_
                                                          _r282400_))))
                                             (declare (not safe))
                                             (_lp282397_
                                              _rest282420_
                                              __tmp287182))
                                           (let ()
                                             (declare (not safe))
                                             (_lp282397_
                                              _rest282420_
                                              _r282400_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in282421_
                                              'gx#module-import::t))
                                           (let ((_iphi282423_
                                                  (fx+ _phi282392_
                                                       (##direct-structure-ref
                                                        _in282421_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi282423_))
                                                 (let ((__tmp287180
                                                        (let ((__tmp287181
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in282421_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp287181 _r282400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp282397_
                                                    _rest282420_
                                                    __tmp287180))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp282397_
                                                    _rest282420_
                                                    _r282400_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in282421_
                                                  'gx#import-set::t))
                                               (let ((_xphi282425_
                                                      (fx+ _iphi282394_
                                                           (##direct-structure-ref
                                                            _in282421_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi282425_))
                                                     (let ((__tmp287178
                                                            (let ((__tmp287179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in282421_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp287179 _r282400_))))
               (declare (not safe))
               (_lp282397_ _rest282420_ __tmp287178))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi282425_)
                                                         (let ((__tmp287176
                                                                (let ((__tmp287177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template282329_
                                  _in282421_
                                  _iphi282394_))))
                          (declare (not safe))
                          (foldl1 cons _r282400_ __tmp287177))))
                   (declare (not safe))
                   (_lp282397_ _rest282420_ __tmp287176))
                 (let ()
                   (declare (not safe))
                   (_lp282397_ _rest282420_ _r282400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp282397_
                                                  _rest282420_
                                                  _r282400_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest282401282409_))
                               (let ((_hd282406282430_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest282401282409_)))
                                     (_tl282407282432_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest282401282409_))))
                                 (let* ((_in282435_ _hd282406282430_)
                                        (_rest282437_ _tl282407282432_))
                                   (declare (not safe))
                                   (_K282405282427_ _rest282437_ _in282435_)))
                               (let ()
                                 (declare (not safe))
                                 (_else282403282417_))))))))
                  (_find-deps282330_
                   (lambda (_rest282337_ _deps282338_)
                     (let* ((_rest282339282347_ _rest282337_)
                            (_else282341282355_ (lambda () _deps282338_))
                            (_K282343282379_
                             (lambda (_rest282358_ _hd282359_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd282359_
                                      'gx#module-context::t))
                                   (let ((_id282361_
                                          (##structure-ref
                                           _hd282359_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports282362_
                                          (##structure-ref
                                           _hd282359_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht282328_ _id282361_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps282330_
                                            _rest282358_
                                            _deps282338_))
                                         (let ((_$e282364_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd282359_))))
                                           (if _$e282364_
                                               ((lambda (_pre282367_)
                                                  (let ((_xdeps282369_
                                                         (let ((__tmp287195
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre282367_ _imports282362_))))
                   (declare (not safe))
                   (_find-deps282330_ __tmp287195 _deps282338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht282328_
                                                       _id282361_
                                                       _hd282359_))
                                                    (let ((__tmp287196
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd282359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps282369_))))
              (declare (not safe))
              (_find-deps282330_ _rest282358_ __tmp287196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e282364_)
                                               (let ((_xdeps282371_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps282330_
                                                         _imports282362_
                                                         _deps282338_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht282328_
                                                    _id282361_
                                                    _hd282359_))
                                                 (let ((__tmp287194
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd282359_
                                                                _xdeps282371_))))
                                                   (declare (not safe))
                                                   (_find-deps282330_
                                                    _rest282358_
                                                    __tmp287194)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd282359_
                                          'gx#prelude-context::t))
                                       (let ((_id282373_
                                              (##structure-ref
                                               _hd282359_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht282328_
                                                _id282373_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps282330_
                                                _rest282358_
                                                _deps282338_))
                                             (let ((_xdeps282375_
                                                    (let ((__tmp287192
                                                           (##structure-ref
                                                            _hd282359_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps282330_
                                                       __tmp287192
                                                       _deps282338_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht282328_
                                                      _id282373_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps282330_
                                                      _rest282358_
                                                      _xdeps282375_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht282328_
                                                        _id282373_
                                                        _hd282359_))
                                                     (let ((__tmp287193
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd282359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps282375_))))
               (declare (not safe))
               (_find-deps282330_ _rest282358_ __tmp287193)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd282359_
                                              'gx#module-import::t))
                                           (if (let ((__tmp287191
                                                      (##direct-structure-ref
                                                       _hd282359_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp287191))
                                               (let ((__tmp287189
                                                      (let ((__tmp287190
                                                             (##direct-structure-ref
                                                              _hd282359_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp287190
                                                              _rest282358_))))
                                                 (declare (not safe))
                                                 (_find-deps282330_
                                                  __tmp287189
                                                  _deps282338_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps282330_
                                                  _rest282358_
                                                  _deps282338_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd282359_
                                                  'gx#module-export::t))
                                               (let ((__tmp287187
                                                      (let ((__tmp287188
                                                             (##direct-structure-ref
                                                              _hd282359_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp287188
                                                              _rest282358_))))
                                                 (declare (not safe))
                                                 (_find-deps282330_
                                                  __tmp287187
                                                  _deps282338_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd282359_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp287186
                                                              (##direct-structure-ref
                                                               _hd282359_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp287186))
                                                       (let ((__tmp287184
                                                              (let ((__tmp287185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd282359_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp287185 _rest282358_))))
                 (declare (not safe))
                 (_find-deps282330_ __tmp287184 _deps282338_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd282359_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps282377_
                           (let ()
                             (declare (not safe))
                             (_import-set-template282329_ _hd282359_ '0)))
                          (__tmp287183
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest282358_ _xdeps282377_))))
                     (declare (not safe))
                     (_find-deps282330_ __tmp287183 _deps282338_))
                   (let ()
                     (declare (not safe))
                     (_find-deps282330_ _rest282358_ _deps282338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd282359_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest282339282347_))
                           (let ((_hd282344282382_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest282339282347_)))
                                 (_tl282345282384_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest282339282347_))))
                             (let* ((_hd282387_ _hd282344282382_)
                                    (_rest282389_ _tl282345282384_))
                               (declare (not safe))
                               (_K282343282379_ _rest282389_ _hd282387_)))
                           (let ()
                             (declare (not safe))
                             (_else282341282355_)))))))
          (reverse (let ((__tmp287197
                          (let ((__tmp287198
                                 (let ((_$e282332_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx282326_))))
                                   (if _$e282332_
                                       ((lambda (_pre282335_)
                                          (let ((__tmp287199
                                                 (##structure-ref
                                                  _ctx282326_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre282335_ __tmp287199)))
                                        _$e282332_)
                                       (##structure-ref
                                        _ctx282326_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps282330_ __tmp287198 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp287197))))))
    (define gxc#find-static-module-file
      (lambda (_ctx282257_)
        (let* ((_context-id282259_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx282257_
                       'gx#module-context::t))
                    (##structure-ref _ctx282257_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx282257_)))
               (_scm282261_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id282259_))
                 '".scm"))
               (_dirs282263_ (gx#current-expander-module-library-path))
               (_dirs282269_
                (let ((_user-libpath282265_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath282265_
                      (let ((_user-libpath282267_
                             (path-expand '"lib" _user-libpath282265_)))
                        (if (member _user-libpath282267_ _dirs282263_)
                            _dirs282263_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath282267_ _dirs282263_))))
                      _dirs282263_)))
               (_dirs282278_
                (let ((_$e282271_ (gxc#current-compile-output-dir)))
                  (if _$e282271_
                      ((lambda (_g282273282275_)
                         (let ()
                           (declare (not safe))
                           (cons _g282273282275_ _dirs282269_)))
                       _$e282271_)
                      _dirs282269_)))
               (_dirs282284_
                (map (lambda (_g282279282281_)
                       (path-expand '"static" _g282279282281_))
                     _dirs282278_)))
          (let _lp282287_ ((_rest282289_ _dirs282284_))
            (let* ((_rest282290282298_ _rest282289_)
                   (_else282292282306_
                    (lambda ()
                      (let ((__tmp287200
                             (##structure-ref
                              _ctx282257_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp287200
                         _scm282261_))))
                   (_K282294282314_
                    (lambda (_rest282309_ _dir282310_)
                      (let ((_path282312_
                             (path-expand _scm282261_ _dir282310_)))
                        (if (file-exists? _path282312_)
                            _path282312_
                            (let ()
                              (declare (not safe))
                              (_lp282287_ _rest282309_)))))))
              (if (let () (declare (not safe)) (##pair? _rest282290282298_))
                  (let ((_hd282295282317_
                         (let ()
                           (declare (not safe))
                           (##car _rest282290282298_)))
                        (_tl282296282319_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest282290282298_))))
                    (let* ((_dir282322_ _hd282295282317_)
                           (_rest282324_ _tl282296282319_))
                      (declare (not safe))
                      (_K282294282314_ _rest282324_ _dir282322_)))
                  (let () (declare (not safe)) (_else282292282306_))))))))
    (define gxc#file-empty?
      (lambda (_path282255_)
        (let ((__tmp287201 (file-info-size (file-info _path282255_ '#t))))
          (declare (not safe))
          (zero? __tmp287201))))
    (define gxc#compile-top-module
      (lambda (_ctx282244_)
        (let ((__tmp287205
               (lambda ()
                 (let ((__tmp287206
                        (##structure-ref
                         _ctx282244_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp287206))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp287207
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx282244_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp287207))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx282244_))
                 (if (let ((__tmp287210
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx282244_))))
                       (declare (not safe))
                       (null? __tmp287210))
                     (let* ((_thr1282249_
                             (let ((__tmp287208
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx282244_)))))
                               (declare (not safe))
                               (spawn __tmp287208)))
                            (_thr2282252_
                             (let ((__tmp287209
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx282244_)))))
                               (declare (not safe))
                               (spawn __tmp287209))))
                       (let () (declare (not safe)) (gxc#join! _thr1282249_))
                       (let () (declare (not safe)) (gxc#join! _thr2282252_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx282244_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx282244_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx282244_))
                     '#!void)))
              (__tmp287204
               (let ((__obj287009
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj287009)
                 __obj287009))
              (__tmp287203 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp287202 (make-hash-table)))
          (declare (not safe))
          (call-with-parameters
           __tmp287205
           gx#current-expander-context
           _ctx282244_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp287204
           gxc#current-compile-runtime-sections
           __tmp287203
           gxc#current-compile-runtime-names
           __tmp287202))))
    (define gxc#collect-bindings
      (lambda (_ctx282242_)
        (let ((__tmp287211
               (##structure-ref _ctx282242_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp287211))))
    (define gxc#compile-runtime-code
      (lambda (_ctx282188_)
        (letrec ((_compile1282190_
                  (lambda (_ctx282231_)
                    (let* ((_code282233_
                            (##structure-ref
                             _ctx282231_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt282237_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code282233_))
                                (let ((_idstr282235_
                                       (let ((__tmp287212
                                              (##structure-ref
                                               _ctx282231_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp287212))))
                                  (string-append _idstr282235_ '"__0"))
                                '#f)))
                      (if _rt282237_
                          (begin
                            (let ((__tmp287213
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp287213 _ctx282231_ _rt282237_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code282192_
                               _ctx282231_
                               _code282233_)))
                          (let ((_path282240_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx282231_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path282240_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code282193_
                         _ctx282231_
                         _code282233_
                         _rt282237_)))))
                 (_context-timestamp282191_
                  (lambda (_ctx282229_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx282229_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code282192_
                  (lambda (_ctx282211_ _code282212_)
                    (let* ((_lifts282214_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code282217_
                            (let ((__tmp287216
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code282212_))))
                                  (__tmp287215
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp287214
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp287216
                               gx#current-expander-context
                               _ctx282211_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts282214_
                               gxc#current-compile-marks
                               __tmp287215
                               gxc#current-compile-identifiers
                               __tmp287214)))
                           (_runtime-code282219_
                            (if (let ((__tmp287220 (unbox _lifts282214_)))
                                  (declare (not safe))
                                  (null? __tmp287220))
                                _runtime-code282217_
                                (let ((__tmp287217
                                       (let ((__tmp287219
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code282217_
                                                      '())))
                                             (__tmp287218
                                              (reverse (unbox _lifts282214_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp287219
                                                 __tmp287218))))
                                  (declare (not safe))
                                  (cons 'begin __tmp287217))))
                           (_runtime-code282221_
                            (let ((__tmp287221
                                   (let ((__tmp287223
                                          (let ((__tmp287224
                                                 (let ((__tmp287227
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp282191_
                                                           _ctx282211_)))
                                                       (__tmp287225
                                                        (let ((__tmp287226
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp287226
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp287227
                                                         __tmp287225))))
                                            (declare (not safe))
                                            (cons 'define __tmp287224)))
                                         (__tmp287222
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code282219_ '()))))
                                     (declare (not safe))
                                     (cons __tmp287223 __tmp287222))))
                              (declare (not safe))
                              (cons 'begin __tmp287221)))
                           (_scm0282223_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx282211_
                               '0
                               '".scm"))))
                      (let ((_scms282226_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx282211_))))
                        (let ((__tmp287228
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0282223_
                                    _runtime-code282221_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp287228
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms282226_)
                            (delete-file _scms282226_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0282223_
                           '" => "
                           _scms282226_))
                        (copy-file _scm0282223_ _scms282226_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0282223_))))))
                 (_generate-loader-code282193_
                  (lambda (_ctx282200_ _code282201_ _rt282202_)
                    (let* ((_loader-code282205_
                            (let ((__tmp287229
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code282201_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp287229
                               gx#current-expander-context
                               _ctx282200_)))
                           (_loader-code282207_
                            (if _rt282202_
                                (let ((__tmp287230
                                       (let ((__tmp287231
                                              (let ((__tmp287232
                                                     (let ((__tmp287233
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt282202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp287233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp287232 '()))))
                                         (declare (not safe))
                                         (cons _loader-code282205_
                                               __tmp287231))))
                                  (declare (not safe))
                                  (cons 'begin __tmp287230))
                                _loader-code282205_)))
                      (let ((__tmp287234
                             (lambda ()
                               (let ((__tmp287235
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx282200_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp287235
                                  _loader-code282207_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp287234
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules282195_
                 (let ((__tmp287236
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx282188_))))
                   (declare (not safe))
                   (cons _ctx282188_ __tmp287236))))
            (for-each
             (lambda (_ctx282197_)
               (let ((__tmp287237
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1282190_ _ctx282197_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp287237
                  gxc#current-compile-decls
                  '())))
             _all-modules282195_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx282085_)
        (letrec ((_compile-ssi282087_
                  (lambda (_code282158_)
                    (let* ((_path282160_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx282085_
                               '#f
                               '".ssi")))
                           (_prelude282171_
                            (let* ((_super282162_
                                    (##structure-ref
                                     _ctx282085_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e282164_
                                    (##structure-ref
                                     _super282162_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e282164_
                                  ((lambda (_g282166282168_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g282166282168_)))
                                   _$e282164_)
                                  ':<root>)))
                           (_ns282173_
                            (##structure-ref
                             _ctx282085_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr282175_
                            (symbol->string
                             (##structure-ref
                              _ctx282085_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg282182_
                            (let ((_$e282177_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr282175_ '#\/))))
                              (if _$e282177_
                                  ((lambda (_x282180_)
                                     (string->symbol
                                      (substring _idstr282175_ '0 _x282180_)))
                                   _$e282177_)
                                  '#f)))
                           (_rt282184_
                            (let ((__tmp287238
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp287238 _ctx282085_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path282160_))
                      (let ((__tmp287239
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude282171_))
                               (if _pkg282182_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg282182_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns282173_))
                               (newline)
                               (pretty-print _code282158_)
                               (if _rt282184_
                                   (pretty-print
                                    (let ((__tmp287240
                                           (let ((__tmp287244
                                                  (let ((__tmp287245
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp287245)))
                                                 (__tmp287241
                                                  (let ((__tmp287242
                                                         (let ((__tmp287243
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt282184_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp287243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp287242 '()))))
                                             (declare (not safe))
                                             (cons __tmp287244 __tmp287241))))
                                      (declare (not safe))
                                      (cons '%#call __tmp287240)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path282160_
                         __tmp287239)))))
                 (_compile-phi282088_
                  (lambda (_part282098_)
                    (let* ((_part282099282112_ _part282098_)
                           (_E282101282116_
                            (lambda ()
                              (error '"No clause matching"
                                     _part282099282112_)))
                           (_K282102282127_
                            (lambda (_code282119_
                                     _n282120_
                                     _phi282121_
                                     _phi-ctx282122_)
                              (let* ((_code282125_
                                      (let ((__tmp287246
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code282119_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp287246
                                         gx#current-expander-context
                                         _phi-ctx282122_
                                         gx#current-expander-phi
                                         _phi282121_)))
                                     (__tmp287247
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx282085_
                                         _n282120_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp287247
                                 _code282125_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part282099282112_))
                          (let ((_hd282103282130_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part282099282112_)))
                                (_tl282104282132_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part282099282112_))))
                            (let ((_phi-ctx282135_ _hd282103282130_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl282104282132_))
                                  (let ((_hd282105282137_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl282104282132_)))
                                        (_tl282106282139_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl282104282132_))))
                                    (let ((_phi282142_ _hd282105282137_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl282106282139_))
                                          (let ((_hd282107282144_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl282106282139_)))
                                                (_tl282108282146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl282106282139_))))
                                            (let ((_n282149_ _hd282107282144_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl282108282146_))
                                                  (let ((_hd282109282151_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl282108282146_)))
                                                        (_tl282110282153_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl282108282146_))))
                                                    (let ((_code282156_
                                                           _hd282109282151_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl282110282153_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K282102282127_
                                                             _code282156_
                                                             _n282149_
                                                             _phi282142_
                                                             _phi-ctx282135_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E282101282116_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E282101282116_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E282101282116_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E282101282116_)))))
                          (let () (declare (not safe)) (_E282101282116_)))))))
          (let ((_g287248_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx282085_))))
            (begin
              (let ((_g287249_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g287248_)
                           (##vector-length _g287248_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g287249_ 2)))
                    (error "Context expects 2 values" _g287249_)))
              (let ((_ssi-code282090_
                     (let () (declare (not safe)) (##vector-ref _g287248_ 0)))
                    (_phi-code282091_
                     (let () (declare (not safe)) (##vector-ref _g287248_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi282087_ _ssi-code282090_))
                  (let ((_threads282096_
                         (map (lambda (_code282093_)
                                (let ((__tmp287250
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi282088_
                                            _code282093_)))))
                                  (declare (not safe))
                                  (spawn __tmp287250)))
                              _phi-code282091_)))
                    (for-each gxc#join! _threads282096_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx282068_)
        (let* ((_path282070_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx282068_ '#f '".ssxi.ss")))
               (_code282072_
                (let ((__tmp287251
                       (##structure-ref
                        _ctx282068_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp287251)))
               (_idstr282074_
                (symbol->string
                 (##structure-ref _ctx282068_ '1 gx#expander-context::t '#f)))
               (_pkg282081_
                (let ((_$e282076_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr282074_ '#\/))))
                  (if _$e282076_
                      ((lambda (_x282079_)
                         (string->symbol
                          (substring _idstr282074_ '0 _x282079_)))
                       _$e282076_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path282070_))
          (let ((__tmp287252
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg282081_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg282081_))
                       '#!void)
                   (newline)
                   (pretty-print _code282072_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path282070_ __tmp287252)))))
    (define gxc#generate-meta-code
      (lambda (_ctx282061_)
        (let* ((_state282063_
                (let ((__obj287010
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj287010 _ctx282061_)
                  __obj287010))
               (_ssi-code282065_
                (let ((__tmp287253
                       (##structure-ref
                        _ctx282061_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp287253 _state282063_))))
          (values _ssi-code282065_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state282063_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx282054_)
        (let ((_lifts282056_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp287256
                 (lambda ()
                   (let ((_code282059_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx282054_))))
                     (if (let ((__tmp287260 (unbox _lifts282056_)))
                           (declare (not safe))
                           (null? __tmp287260))
                         _code282059_
                         (let ((__tmp287257
                                (let ((__tmp287259
                                       (let ()
                                         (declare (not safe))
                                         (cons _code282059_ '())))
                                      (__tmp287258
                                       (reverse (unbox _lifts282056_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp287259 __tmp287258))))
                           (declare (not safe))
                           (cons 'begin __tmp287257))))))
                (__tmp287255
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp287254
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp287256
             gxc#current-compile-lift
             _lifts282056_
             gxc#current-compile-marks
             __tmp287255
             gxc#current-compile-identifiers
             __tmp287254)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx282050_)
        (let ((_modules282052_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp287261
                 (##structure-ref _ctx282050_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp287261 _modules282052_))
          (reverse (unbox _modules282052_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path282033_ _code282034_ _phi?282035_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path282033_))
        (let ((__tmp287262
               (lambda ()
                 (pretty-print
                  (let ((__tmp287263
                         (let ((__tmp287270
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp287264
                                (let ((__tmp287269
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp287265
                                       (let ((__tmp287268
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp287266
                                              (let ((__tmp287267
                                                     (if _phi?282035_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp287267))))
                                         (declare (not safe))
                                         (cons __tmp287268 __tmp287266))))
                                  (declare (not safe))
                                  (cons __tmp287269 __tmp287265))))
                           (declare (not safe))
                           (cons __tmp287270 __tmp287264))))
                    (declare (not safe))
                    (cons 'declare __tmp287263)))
                 (pretty-print _code282034_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path282033_ __tmp287262))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path282033_ _phi?282035_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path282033_))))
    (define gxc#compile-scm-file__0
      (lambda (_path282041_ _code282042_)
        (let ((_phi?282044_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path282041_ _code282042_ _phi?282044_))))
    (define gxc#compile-scm-file
      (lambda _g287272_
        (let ((_g287271_ (let () (declare (not safe)) (##length _g287272_))))
          (cond ((let () (declare (not safe)) (##fx= _g287271_ 2))
                 (apply (lambda (_path282041_ _code282042_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path282041_
                             _code282042_)))
                        _g287272_))
                ((let () (declare (not safe)) (##fx= _g287271_ 3))
                 (apply (lambda (_path282046_ _code282047_ _phi?282048_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path282046_
                             _code282047_
                             _phi?282048_)))
                        _g287272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g287272_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?281934_)
        (let _lp281936_ ((_rest281938_ (gxc#current-compile-gsc-options))
                         (_opts281939_ '()))
          (let* ((_rest281940281960_ _rest281938_)
                 (_else281944281968_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?281934_))
                             (gxc#current-compile-debug))
                        (let ((__tmp287273
                               (let ((__tmp287274 (reverse _opts281939_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp287274))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp287273))
                        (reverse _opts281939_)))))
            (let ((_K281954282011_
                   (lambda (_rest282009_)
                     (let ()
                       (declare (not safe))
                       (_lp281936_ _rest282009_ _opts281939_))))
                  (_K281949281993_
                   (lambda (_rest281991_)
                     (let ()
                       (declare (not safe))
                       (_lp281936_ _rest281991_ _opts281939_))))
                  (_K281946281975_
                   (lambda (_rest281972_ _opt281973_)
                     (let ((__tmp287275
                            (let ()
                              (declare (not safe))
                              (cons _opt281973_ _opts281939_))))
                       (declare (not safe))
                       (_lp281936_ _rest281972_ __tmp287275)))))
              (if (let () (declare (not safe)) (##pair? _rest281940281960_))
                  (let ((_tl281956282016_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest281940281960_)))
                        (_hd281955282014_
                         (let ()
                           (declare (not safe))
                           (##car _rest281940281960_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd281955282014_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl281956282016_))
                            (let* ((_tl281958282019_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl281956282016_)))
                                   (_rest282022_ _tl281958282019_))
                              (declare (not safe))
                              (_K281954282011_ _rest282022_))
                            (let ((_opt281983_ _hd281955282014_)
                                  (_rest281985_ _tl281956282016_))
                              (let ()
                                (declare (not safe))
                                (_K281946281975_ _rest281985_ _opt281983_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd281955282014_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl281956282016_))
                                (let* ((_tl281953282001_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl281956282016_)))
                                       (_rest282004_ _tl281953282001_))
                                  (declare (not safe))
                                  (_K281949281993_ _rest282004_))
                                (let ((_opt281983_ _hd281955282014_)
                                      (_rest281985_ _tl281956282016_))
                                  (let ()
                                    (declare (not safe))
                                    (_K281946281975_
                                     _rest281985_
                                     _opt281983_))))
                            (let ((_opt281983_ _hd281955282014_)
                                  (_rest281985_ _tl281956282016_))
                              (let ()
                                (declare (not safe))
                                (_K281946281975_ _rest281985_ _opt281983_))))))
                  (let () (declare (not safe)) (_else281944281968_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?282028_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?282028_))))
    (define gxc#gsc-link-options
      (lambda _g287277_
        (let ((_g287276_ (let () (declare (not safe)) (##length _g287277_))))
          (cond ((let () (declare (not safe)) (##fx= _g287276_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g287277_))
                ((let () (declare (not safe)) (##fx= _g287276_ 1))
                 (apply (lambda (_phi?282030_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?282030_)))
                        _g287277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g287277_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?281835_)
        (let _lp281837_ ((_rest281839_ (gxc#current-compile-gsc-options))
                         (_opts281840_ '()))
          (let* ((_rest281841281861_ _rest281839_)
                 (_else281845281869_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?281835_))
                             (gxc#current-compile-debug))
                        (let ((__tmp287278
                               (let ((__tmp287279 (reverse _opts281840_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp287279))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp287278))
                        (reverse _opts281840_)))))
            (let ((_K281855281908_
                   (lambda (_rest281905_ _opt281906_)
                     (let ((__tmp287280
                            (let ((__tmp287281
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts281840_))))
                              (declare (not safe))
                              (cons _opt281906_ __tmp287281))))
                       (declare (not safe))
                       (_lp281837_ _rest281905_ __tmp287280))))
                  (_K281850281889_
                   (lambda (_rest281887_)
                     (let ()
                       (declare (not safe))
                       (_lp281837_ _rest281887_ _opts281840_))))
                  (_K281847281875_
                   (lambda (_rest281873_)
                     (let ()
                       (declare (not safe))
                       (_lp281837_ _rest281873_ _opts281840_)))))
              (if (let () (declare (not safe)) (##pair? _rest281841281861_))
                  (let ((_tl281857281913_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest281841281861_)))
                        (_hd281856281911_
                         (let ()
                           (declare (not safe))
                           (##car _rest281841281861_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd281856281911_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl281857281913_))
                            (let ((_tl281859281918_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl281857281913_)))
                                  (_hd281858281916_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl281857281913_))))
                              (let ((_opt281921_ _hd281858281916_)
                                    (_rest281923_ _tl281859281918_))
                                (let ()
                                  (declare (not safe))
                                  (_K281855281908_ _rest281923_ _opt281921_))))
                            (let ((_rest281881_ _tl281857281913_))
                              (declare (not safe))
                              (_K281847281875_ _rest281881_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd281856281911_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl281857281913_))
                                (let* ((_tl281854281897_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl281857281913_)))
                                       (_rest281900_ _tl281854281897_))
                                  (declare (not safe))
                                  (_K281850281889_ _rest281900_))
                                (let ((_rest281881_ _tl281857281913_))
                                  (declare (not safe))
                                  (_K281847281875_ _rest281881_)))
                            (let ((_rest281881_ _tl281857281913_))
                              (declare (not safe))
                              (_K281847281875_ _rest281881_)))))
                  (let () (declare (not safe)) (_else281845281869_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?281929_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?281929_))))
    (define gxc#gsc-cc-options
      (lambda _g287283_
        (let ((_g287282_ (let () (declare (not safe)) (##length _g287283_))))
          (cond ((let () (declare (not safe)) (##fx= _g287282_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g287283_))
                ((let () (declare (not safe)) (##fx= _g287282_ 1))
                 (apply (lambda (_phi?281931_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?281931_)))
                        _g287283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g287283_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir281830_)
        (let* ((_user-staticdir281832_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp287284
                (let ((__tmp287285
                       (string-append
                        '"-I "
                        _staticdir281830_
                        '" -I "
                        _user-staticdir281832_)))
                  (declare (not safe))
                  (cons __tmp287285 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp287284))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp281742_ ((_rest281744_ (gxc#current-compile-gsc-options))
                         (_opts281745_ '()))
          (let* ((_rest281746281766_ _rest281744_)
                 (_else281750281774_ (lambda () _opts281745_)))
            (let ((_K281760281817_
                   (lambda (_rest281815_)
                     (let ()
                       (declare (not safe))
                       (_lp281742_ _rest281815_ _opts281745_))))
                  (_K281755281795_
                   (lambda (_rest281792_ _opt281793_)
                     (let ((__tmp287286
                            (append _opts281745_
                                    (let ((__tmp287287
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt281793_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp287287)))))
                       (declare (not safe))
                       (_lp281742_ _rest281792_ __tmp287286))))
                  (_K281752281780_
                   (lambda (_rest281778_)
                     (let ()
                       (declare (not safe))
                       (_lp281742_ _rest281778_ _opts281745_)))))
              (if (let () (declare (not safe)) (##pair? _rest281746281766_))
                  (let ((_tl281762281822_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest281746281766_)))
                        (_hd281761281820_
                         (let ()
                           (declare (not safe))
                           (##car _rest281746281766_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd281761281820_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl281762281822_))
                            (let* ((_tl281764281825_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl281762281822_)))
                                   (_rest281828_ _tl281764281825_))
                              (declare (not safe))
                              (_K281760281817_ _rest281828_))
                            (let ((_rest281786_ _tl281762281822_))
                              (declare (not safe))
                              (_K281752281780_ _rest281786_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd281761281820_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl281762281822_))
                                (let ((_tl281759281805_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl281762281822_)))
                                      (_hd281758281803_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl281762281822_))))
                                  (let ((_opt281808_ _hd281758281803_)
                                        (_rest281810_ _tl281759281805_))
                                    (let ()
                                      (declare (not safe))
                                      (_K281755281795_
                                       _rest281810_
                                       _opt281808_))))
                                (let ((_rest281786_ _tl281762281822_))
                                  (declare (not safe))
                                  (_K281752281780_ _rest281786_)))
                            (let ((_rest281786_ _tl281762281822_))
                              (declare (not safe))
                              (_K281752281780_ _rest281786_)))))
                  (let () (declare (not safe)) (_else281750281774_))))))))
    (define gxc#not-string-empty?
      (lambda (_str281739_)
        (let ((__tmp287288
               (let () (declare (not safe)) (string-empty? _str281739_))))
          (declare (not safe))
          (not __tmp287288))))
    (define gxc#gsc-compile-file
      (lambda (_path281707_ _phi?281708_)
        (letrec ((_gsc-link-path281710_
                  (lambda (_base-path281731_)
                    (let _lp281733_ ((_n281735_ '1))
                      (let ((_path281737_
                             (string-append
                              _base-path281731_
                              '".o"
                              (number->string _n281735_))))
                        (if (file-exists? _path281737_)
                            (let ((__tmp287289
                                   (let ()
                                     (declare (not safe))
                                     (+ _n281735_ '1))))
                              (declare (not safe))
                              (_lp281733_ __tmp287289))
                            _path281737_))))))
          (let* ((_base-path281712_ (path-strip-extension _path281707_))
                 (_path-c281714_ (string-append _base-path281712_ '".c"))
                 (_path-o281716_ (string-append _base-path281712_ '".o"))
                 (_link-path281718_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path281710_ _base-path281712_)))
                 (_link-path-c281720_ (string-append _link-path281718_ '".c"))
                 (_link-path-o281722_ (string-append _link-path281718_ '".o"))
                 (_gsc-link-opts281724_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?281708_)))
                 (_gsc-cc-opts281726_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?281708_)))
                 (_gcc-ld-opts281728_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp287296 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp287290
                   (let ((__tmp287291
                          (let ((__tmp287292
                                 (let ((__tmp287293
                                        (let ((__tmp287294
                                               (let ((__tmp287295
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path281707_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp287295
                                                         _gsc-link-opts281724_))))
                                          (declare (not safe))
                                          (cons _link-path-c281720_
                                                __tmp287294))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp287293))))
                            (declare (not safe))
                            (cons '"-flat" __tmp287292))))
                     (declare (not safe))
                     (cons '"-link" __tmp287291))))
              (declare (not safe))
              (gxc#invoke __tmp287296 __tmp287290 'stdout-redirection: '#t))
            (let ((__tmp287303 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp287297
                   (let ((__tmp287298
                          (let ((__tmp287299
                                 (let ((__tmp287300
                                        (let ((__tmp287301
                                               (let ((__tmp287302
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c281720_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c281714_
                                                       __tmp287302))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp287301
                                                  _gsc-cc-opts281726_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp287300))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp287299))))
                     (declare (not safe))
                     (cons '"-obj" __tmp287298))))
              (declare (not safe))
              (gxc#invoke __tmp287303 __tmp287297 'stdout-redirection: '#t))
            (let ((__tmp287309 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp287304
                   (let ((__tmp287305
                          (let ((__tmp287306
                                 (let ((__tmp287307
                                        (let ((__tmp287308
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o281722_
                                                       _gcc-ld-opts281728_))))
                                          (declare (not safe))
                                          (cons _path-o281716_ __tmp287308))))
                                   (declare (not safe))
                                   (cons _link-path281718_ __tmp287307))))
                            (declare (not safe))
                            (cons '"-o" __tmp287306))))
                     (declare (not safe))
                     (cons '"-shared" __tmp287305))))
              (declare (not safe))
              (gxc#invoke __tmp287309 __tmp287304))
            (for-each
             delete-file
             (let ((__tmp287310
                    (let ((__tmp287311
                           (let ((__tmp287312
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o281722_ '()))))
                             (declare (not safe))
                             (cons _link-path-c281720_ __tmp287312))))
                      (declare (not safe))
                      (cons _path-o281716_ __tmp287311))))
               (declare (not safe))
               (cons _path-c281714_ __tmp287310)))))))
    (define gxc#compile-output-file
      (lambda (_ctx281678_ _n281679_ _ext281680_)
        (letrec ((_module-relative-path281682_
                  (lambda (_ctx281705_)
                    (path-strip-directory
                     (let ((__tmp287313
                            (##structure-ref
                             _ctx281705_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp287313)))))
                 (_module-source-directory281683_
                  (lambda (_ctx281701_)
                    (path-directory
                     (let ((_mpath281703_
                            (##structure-ref
                             _ctx281701_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath281703_))
                           _mpath281703_
                           (let ()
                             (declare (not safe))
                             (last _mpath281703_)))))))
                 (_section-string281684_
                  (lambda (_n281699_)
                    (if (let () (declare (not safe)) (number? _n281699_))
                        (number->string _n281699_)
                        (if (let () (declare (not safe)) (symbol? _n281699_))
                            (symbol->string _n281699_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n281699_))
                                _n281699_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n281699_)))))))
                 (_file-name281685_
                  (lambda (_path281697_)
                    (if _n281679_
                        (string-append
                         _path281697_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string281684_ _n281679_))
                         _ext281680_)
                        (string-append _path281697_ _ext281680_))))
                 (_file-path281686_
                  (lambda ()
                    (let ((_$e281692_ (gxc#current-compile-output-dir)))
                      (if _$e281692_
                          ((lambda (_outdir281695_)
                             (path-expand
                              (let ((__tmp287315
                                     (let ((__tmp287316
                                            (##structure-ref
                                             _ctx281678_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp287316))))
                                (declare (not safe))
                                (_file-name281685_ __tmp287315))
                              _outdir281695_))
                           _$e281692_)
                          (path-expand
                           (let ((__tmp287314
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path281682_
                                     _ctx281678_))))
                             (declare (not safe))
                             (_file-name281685_ __tmp287314))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory281683_
                              _ctx281678_))))))))
          (let ((_path281688_
                 (let () (declare (not safe)) (_file-path281686_))))
            (let ((__tmp287317
                   (lambda ()
                     (let ((__tmp287318 (path-directory _path281688_)))
                       (declare (not safe))
                       (create-directory* __tmp287318)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp287317))
            _path281688_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx281660_)
        (letrec ((_file-name281662_
                  (lambda (_id281676_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id281676_))
                     '".scm")))
                 (_file-path281663_
                  (lambda ()
                    (let* ((_file281669_
                            (let ((__tmp287319
                                   (##structure-ref
                                    _ctx281660_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name281662_ __tmp287319)))
                           (_$e281671_ (gxc#current-compile-output-dir)))
                      (if _$e281671_
                          ((lambda (_outdir281674_)
                             (path-expand
                              _file281669_
                              (path-expand '"static" _outdir281674_)))
                           _$e281671_)
                          (path-expand _file281669_ '"static"))))))
          (let ((_path281665_
                 (let () (declare (not safe)) (_file-path281663_))))
            (let ((__tmp287320
                   (lambda ()
                     (let ((__tmp287321 (path-directory _path281665_)))
                       (declare (not safe))
                       (create-directory* __tmp287321)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp287320))
            _path281665_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx281654_ _opts281655_)
        (let ((_$e281657_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts281655_))))
          (if _$e281657_
              (values _$e281657_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx281654_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr281647_)
        (if (let () (declare (not safe)) (string? _idstr281647_))
            (let* ((_str281649_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr281647_)))
                   (_strs281651_
                    (let ()
                      (declare (not safe))
                      (string-split _str281649_ '#\/))))
              (let () (declare (not safe)) (string-join _strs281651_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr281647_))
                (let ((__tmp287322 (symbol->string _idstr281647_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp287322))
                (error '"Bad module id" _idstr281647_)))))
    (define gxc#invoke__%
      (lambda (_g287323_
               _stdout-redirection281608281612_
               _stderr-redirection281609281614_
               _program281616_
               _args281617_)
        (let* ((_stdout-redirection281619_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection281608281612_ absent-value))
                    '#f
                    _stdout-redirection281608281612_))
               (_stderr-redirection281621_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection281609281614_ absent-value))
                    '#f
                    _stderr-redirection281609281614_)))
          (let ((__tmp287324
                 (let ()
                   (declare (not safe))
                   (cons _program281616_ _args281617_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp287324))
          (let* ((_proc281623_
                  (open-process
                   (let ((__tmp287325
                          (let ((__tmp287326
                                 (let ((__tmp287327
                                        (let ((__tmp287328
                                               (let ((__tmp287329
                                                      (let ((__tmp287330
                                                             (let ((__tmp287331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection281621_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp287331))))
                (declare (not safe))
                (cons _stdout-redirection281619_ __tmp287330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp287329))))
                                          (declare (not safe))
                                          (cons _args281617_ __tmp287328))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp287327))))
                            (declare (not safe))
                            (cons _program281616_ __tmp287326))))
                     (declare (not safe))
                     (cons 'path: __tmp287325))))
                 (_output281628_
                  (if (or _stdout-redirection281619_
                          _stderr-redirection281621_)
                      (read-line _proc281623_ '#f)
                      '#f)))
            (let ((_status281631_ (process-status _proc281623_)))
              (close-port _proc281623_)
              (if (let () (declare (not safe)) (zero? _status281631_))
                  '#!void
                  (begin
                    (display _output281628_)
                    (let ((__tmp287332
                           (let ()
                             (declare (not safe))
                             (cons _program281616_ _args281617_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp287332
                       _status281631_)))))))))
    (define gxc#invoke__@
      (lambda (_keys281607281636_ . _args281638_)
        (apply gxc#invoke__%
               _keys281607281636_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys281607281636_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys281607281636_
                  'stderr-redirection:
                  absent-value))
               _args281638_)))
    (define gxc#invoke
      (lambda _args281610281644_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args281610281644_)))
    (define gxc#join!
      (lambda (_thread281601_)
        (let ((__tmp287334
               (lambda (_exn281603_)
                 (if (uncaught-exception? _exn281603_)
                     (raise (uncaught-exception-reason _exn281603_))
                     (raise _exn281603_))))
              (__tmp287333 (lambda () (thread-join! _thread281601_))))
          (declare (not safe))
          (with-catch __tmp287334 __tmp287333))))))
