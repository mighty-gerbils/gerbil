(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707840762)
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
      (lambda (_path293219_ _fun293220_)
        (with-output-to-file
         (let ((__tmp297881
                (let ()
                  (declare (not safe))
                  (cons _path293219_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp297881))
         _fun293220_)))
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
      (lambda (_gerbil-libdir293214_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir293214_)))
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
      (lambda (_dir293212_) (delete-file-or-directory _dir293212_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath293186_ _opts293187_)
        (if (let () (declare (not safe)) (string? _srcpath293186_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath293186_)))
        (let ((_outdir293189_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts293187_)))
              (_invoke-gsc?293190_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts293187_)))
              (_gsc-options293191_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts293187_)))
              (_keep-scm?293192_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts293187_)))
              (_verbosity293193_
               (let () (declare (not safe)) (pgetq 'verbose: _opts293187_)))
              (_optimize293194_
               (let () (declare (not safe)) (pgetq 'optimize: _opts293187_)))
              (_debug293195_
               (let () (declare (not safe)) (pgetq 'debug: _opts293187_)))
              (_gen-ssxi293196_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts293187_))))
          (if _outdir293189_
              (let ((__tmp297882
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir293189_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297882))
              '#!void)
          (if _optimize293194_
              (let ((__tmp297883
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297883))
              '#!void)
          (let ((__tmp297887
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath293186_))
                   (let ((__tmp297888
                          (let ((__tmp297889
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath293186_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp297889))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp297888))))
                (__tmp297886
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp297884
                 (let ((__tmp297885
                        (let ()
                          (declare (not safe))
                          (cons _srcpath293186_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp297885))))
            (declare (not safe))
            (call-with-parameters
             __tmp297887
             gxc#current-compile-output-dir
             _outdir293189_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?293190_
             gxc#current-compile-gsc-options
             _gsc-options293191_
             gxc#current-compile-keep-scm
             _keep-scm?293192_
             gxc#current-compile-verbose
             _verbosity293193_
             gxc#current-compile-optimize
             _optimize293194_
             gxc#current-compile-debug
             _debug293195_
             gxc#current-compile-generate-ssxi
             _gen-ssxi293196_
             gxc#current-compile-timestamp
             __tmp297886
             gxc#current-compile-context
             __tmp297884
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath293205_)
        (let ((_opts293207_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath293205_ _opts293207_))))
    (define gxc#compile-module
      (lambda _g297891_
        (let ((_g297890_ (let () (declare (not safe)) (##length _g297891_))))
          (cond ((let () (declare (not safe)) (##fx= _g297890_ 1))
                 (apply (lambda (_srcpath293205_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath293205_)))
                        _g297891_))
                ((let () (declare (not safe)) (##fx= _g297890_ 2))
                 (apply (lambda (_srcpath293209_ _opts293210_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath293209_
                             _opts293210_)))
                        _g297891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g297891_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath293162_ _opts293163_)
        (if (let () (declare (not safe)) (string? _srcpath293162_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath293162_)))
        (let ((_outdir293165_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts293163_)))
              (_invoke-gsc?293166_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts293163_)))
              (_gsc-options293167_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts293163_)))
              (_keep-scm?293168_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts293163_)))
              (_verbosity293169_
               (let () (declare (not safe)) (pgetq 'verbose: _opts293163_)))
              (_debug293170_
               (let () (declare (not safe)) (pgetq 'debug: _opts293163_))))
          (if _outdir293165_
              (let ((__tmp297892
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir293165_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp297892))
              '#!void)
          (let ((__tmp297896
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath293162_))
                   (let ((__tmp297897
                          (let ((__tmp297898
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath293162_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp297898))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp297897
                      _opts293163_))))
                (__tmp297895
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp297893
                 (let ((__tmp297894
                        (let ()
                          (declare (not safe))
                          (cons _srcpath293162_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp297894))))
            (declare (not safe))
            (call-with-parameters
             __tmp297896
             gxc#current-compile-output-dir
             _outdir293165_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?293166_
             gxc#current-compile-gsc-options
             _gsc-options293167_
             gxc#current-compile-keep-scm
             _keep-scm?293168_
             gxc#current-compile-verbose
             _verbosity293169_
             gxc#current-compile-debug
             _debug293170_
             gxc#current-compile-timestamp
             __tmp297895
             gxc#current-compile-context
             __tmp297893
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath293178_)
        (let ((_opts293180_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath293178_ _opts293180_))))
    (define gxc#compile-exe
      (lambda _g297900_
        (let ((_g297899_ (let () (declare (not safe)) (##length _g297900_))))
          (cond ((let () (declare (not safe)) (##fx= _g297899_ 1))
                 (apply (lambda (_srcpath293178_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath293178_)))
                        _g297900_))
                ((let () (declare (not safe)) (##fx= _g297899_ 2))
                 (apply (lambda (_srcpath293182_ _opts293183_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath293182_ _opts293183_)))
                        _g297900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g297900_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx293158_ _opts293159_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts293159_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx293158_
               _opts293159_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx293158_
               _opts293159_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx293041_ _opts293042_)
        (letrec ((_generate-stub293044_
                  (lambda (_builtin-modules293154_)
                    (let ((_mod-main293156_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx293041_ 'main))))
                      (write (let ((__tmp297901
                                    (let ((__tmp297902
                                           (let ((__tmp297903
                                                  (let ((__tmp297904
                                                         (let ((__tmp297906
                                                                (let ((__tmp297907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules293154_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp297907)))
                       (__tmp297905
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp297906 __tmp297905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp297904))))
                                             (declare (not safe))
                                             (cons __tmp297903 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp297902))))
                               (declare (not safe))
                               (cons 'define __tmp297901)))
                      (write (let ((__tmp297908
                                    (let ((__tmp297947
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp297909
                                           (let ((__tmp297910
                                                  (let ((__tmp297911
                                                         (let ((__tmp297935
                                                                (let ((__tmp297936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp297937
                                      (let ((__tmp297945
                                             (let ((__tmp297946
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp297946)))
                                            (__tmp297938
                                             (let ((__tmp297939
                                                    (let ((__tmp297940
                                                           (let ((__tmp297941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297942
                                 (let ((__tmp297943
                                        (let ((__tmp297944
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp297944 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp297943))))
                            (declare (not safe))
                            (cons __tmp297942 '()))))
                     (declare (not safe))
                     (cons _mod-main293156_ __tmp297941))))
              (declare (not safe))
              (cons 'apply __tmp297940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp297939 '()))))
                                        (declare (not safe))
                                        (cons __tmp297945 __tmp297938))))
                                 (declare (not safe))
                                 (cons '() __tmp297937))))
                          (declare (not safe))
                          (cons 'lambda __tmp297936)))
                       (__tmp297912
                        (let ((__tmp297913
                               (let ((__tmp297914
                                      (let ((__tmp297915
                                             (let ((__tmp297926
                                                    (let ((__tmp297927
                                                           (let ((__tmp297928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297929
                                 (let ((__tmp297930
                                        (let ((__tmp297931
                                               (let ((__tmp297932
                                                      (let ((__tmp297933
                                                             (let ((__tmp297934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp297934 '()))))
                (declare (not safe))
                (cons 'force-output __tmp297933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp297932 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp297931))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp297930))))
                            (declare (not safe))
                            (cons __tmp297929 '()))))
                     (declare (not safe))
                     (cons 'void __tmp297928))))
              (declare (not safe))
              (cons 'with-catch __tmp297927)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp297916
                                                    (let ((__tmp297917
                                                           (let ((__tmp297918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp297919
                                 (let ((__tmp297920
                                        (let ((__tmp297921
                                               (let ((__tmp297922
                                                      (let ((__tmp297923
                                                             (let ((__tmp297924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp297925
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp297925 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp297924))))
                (declare (not safe))
                (cons __tmp297923 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp297922))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp297921))))
                                   (declare (not safe))
                                   (cons __tmp297920 '()))))
                            (declare (not safe))
                            (cons 'void __tmp297919))))
                     (declare (not safe))
                     (cons 'with-catch __tmp297918))))
              (declare (not safe))
              (cons __tmp297917 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp297926
                                                     __tmp297916))))
                                        (declare (not safe))
                                        (cons '() __tmp297915))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp297914))))
                          (declare (not safe))
                          (cons __tmp297913 '()))))
                   (declare (not safe))
                   (cons __tmp297935 __tmp297912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp297911))))
                                             (declare (not safe))
                                             (cons __tmp297910 '()))))
                                      (declare (not safe))
                                      (cons __tmp297947 __tmp297909))))
                               (declare (not safe))
                               (cons 'define __tmp297908)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts293045_
                  (lambda (_libgerbil293152_)
                    (call-with-input-file
                     (string-append _libgerbil293152_ '".ldd")
                     read)))
                 (_replace-extension293046_
                  (lambda (_path293149_ _ext293150_)
                    (string-append
                     (path-strip-extension _path293149_)
                     _ext293150_)))
                 (_not-exclude-module?293047_
                  (lambda (_ctx293145_)
                    (let ((_id-str293147_
                           (symbol->string
                            (##structure-ref
                             _ctx293145_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp297949
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str293147_))))
                            (declare (not safe))
                            (not __tmp297949))
                          (let ((__tmp297948
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str293147_))))
                            (declare (not safe))
                            (not __tmp297948))
                          '#f))))
                 (_not-file-empty?293048_
                  (lambda (_path293143_)
                    (let ((__tmp297950
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path293143_))))
                      (declare (not safe))
                      (not __tmp297950))))
                 (_compile-stub293049_
                  (lambda (_output-scm293056_ _output-bin293057_)
                    (let* ((_gerbil-home293059_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir293061_
                            (path-expand '"lib" _gerbil-home293059_))
                           (_gerbil-staticdir293063_
                            (path-expand '"static" _gerbil-libdir293061_))
                           (_gxlink293065_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir293061_))
                           (_tmp293067_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path293071_
                            (lambda (_f293069_)
                              (path-expand
                               (path-strip-directory _f293069_)
                               _tmp293067_)))
                           (_deps293073_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx293041_)))
                           (_deps293075_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?293047_
                                      _deps293073_)))
                           (_src-deps-scm293077_
                            (map gxc#find-static-module-file _deps293075_))
                           (_src-deps-scm293079_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?293048_
                                      _src-deps-scm293077_)))
                           (_src-deps-scm293081_
                            (map path-expand _src-deps-scm293079_))
                           (_deps-scm293083_
                            (map _tmp-path293071_ _src-deps-scm293081_))
                           (_deps-c293089_
                            (map (lambda (_g293084293086_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension293046_
                                      _g293084293086_
                                      '".c")))
                                 _deps-scm293083_))
                           (_deps-o293095_
                            (map (lambda (_g293090293092_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension293046_
                                      _g293090293092_
                                      '".o")))
                                 _deps-scm293083_))
                           (_src-bin-scm293097_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx293041_)))
                           (_src-bin-scm293099_
                            (path-expand _src-bin-scm293097_))
                           (_bin-scm293101_
                            (let ()
                              (declare (not safe))
                              (_tmp-path293071_ _src-bin-scm293099_)))
                           (_bin-c293103_
                            (let ()
                              (declare (not safe))
                              (_replace-extension293046_
                               _bin-scm293101_
                               '".c")))
                           (_bin-o293105_
                            (let ()
                              (declare (not safe))
                              (_replace-extension293046_
                               _bin-scm293101_
                               '".o")))
                           (_output-bin293107_
                            (path-expand _output-bin293057_))
                           (_output-scm293109_
                            (path-expand _output-scm293056_))
                           (_output-c293111_
                            (let ()
                              (declare (not safe))
                              (_replace-extension293046_
                               _output-scm293109_
                               '".c")))
                           (_output-o293113_
                            (let ()
                              (declare (not safe))
                              (_replace-extension293046_
                               _output-scm293109_
                               '".o")))
                           (_output_-c293115_
                            (let ()
                              (declare (not safe))
                              (_replace-extension293046_
                               _output-scm293109_
                               '"_.c")))
                           (_output_-o293117_
                            (let ()
                              (declare (not safe))
                              (_replace-extension293046_
                               _output-scm293109_
                               '"_.o")))
                           (_gsc-link-opts293119_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts293121_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts293123_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir293063_)))
                           (_output-ld-opts293125_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a293127_
                            (path-expand '"libgerbil.a" _gerbil-libdir293061_))
                           (_libgerbil.so293129_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir293061_))
                           (_libgerbil-ld-opts293131_
                            (if (file-exists? _libgerbil.so293129_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts293045_
                                   _libgerbil.so293129_))
                                (if (file-exists? _libgerbil.a293127_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts293045_
                                       _libgerbil.a293127_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a293127_
                                       _libgerbil.so293129_)))))
                           (_rpath293133_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir293061_)))
                           (_builtin-modules293137_
                            (map (lambda (_mod293135_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod293135_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx293041_ _deps293075_)))))
                      (let ((__tmp297951
                             (lambda ()
                               (let ((__tmp297952
                                      (path-directory _output-bin293107_)))
                                 (declare (not safe))
                                 (create-directory* __tmp297952)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp297951))
                      (let ((__tmp297953
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub293044_
                                  _builtin-modules293137_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm293109_
                         __tmp297953))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp297954
                                   (lambda () (create-directory _tmp293067_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp297954))
                            (for-each
                             copy-file
                             _src-deps-scm293081_
                             _deps-scm293083_)
                            (copy-file _src-bin-scm293099_ _bin-scm293101_)
                            (let ((__tmp297962
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297955
                                   (let ((__tmp297956
                                          (let ((__tmp297957
                                                 (let ((__tmp297958
                                                        (let ((__tmp297959
                                                               (let ((__tmp297960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297961
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm293109_ '()))))
                                (declare (not safe))
                                (cons _bin-scm293101_ __tmp297961))))
                         (declare (not safe))
                         (foldr1 cons __tmp297960 _deps-scm293083_))))
                  (declare (not safe))
                  (foldr1 cons __tmp297959 _gsc-link-opts293119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink293065_
                                                         __tmp297958))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp297957))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp297956))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297962
                               __tmp297955))
                            (let ((__tmp297970
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp297963
                                   (let ((__tmp297964
                                          (let ((__tmp297965
                                                 (let ((__tmp297966
                                                        (let ((__tmp297967
                                                               (let ((__tmp297968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297969
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c293115_ '()))))
                                (declare (not safe))
                                (cons _output-c293111_ __tmp297969))))
                         (declare (not safe))
                         (cons _bin-c293103_ __tmp297968))))
                  (declare (not safe))
                  (foldr1 cons __tmp297967 _deps-c293089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297966
                                                           _gsc-static-opts293123_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp297965
                                                    _gsc-cc-opts293121_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp297964))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297970
                               __tmp297963))
                            (let ((__tmp297983
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp297971
                                   (let ((__tmp297972
                                          (let ((__tmp297973
                                                 (let ((__tmp297974
                                                        (let ((__tmp297975
                                                               (let ((__tmp297976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp297977
                                     (let ((__tmp297978
                                            (let ((__tmp297979
                                                   (let ((__tmp297980
                                                          (let ((__tmp297981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp297982
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts293131_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp297982))))
                    (declare (not safe))
                    (cons _gerbil-libdir293061_ __tmp297981))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp297980))))
                                              (declare (not safe))
                                              (cons _rpath293133_
                                                    __tmp297979))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp297978
                                               _output-ld-opts293125_))))
                                (declare (not safe))
                                (cons _output_-o293117_ __tmp297977))))
                         (declare (not safe))
                         (cons _output-o293113_ __tmp297976))))
                  (declare (not safe))
                  (cons _bin-o293105_ __tmp297975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp297974
                                                           _deps-o293095_))))
                                            (declare (not safe))
                                            (cons _output-bin293107_
                                                  __tmp297973))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp297972))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp297983
                               __tmp297971))
                            (for-each
                             delete-file
                             (let ((__tmp297984
                                    (let ((__tmp297985
                                           (let ((__tmp297986
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o293117_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o293113_
                                                   __tmp297986))))
                                      (declare (not safe))
                                      (cons _output_-c293115_ __tmp297985))))
                               (declare (not safe))
                               (cons _output-c293111_ __tmp297984)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp293067_)))
                          '#!void)))))
          (let* ((_output-bin293051_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx293041_ _opts293042_)))
                 (_output-scm293053_
                  (string-append _output-bin293051_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub293049_ _output-scm293053_ _output-bin293051_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm293053_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx292866_ _opts292867_)
        (letrec ((_reset-declare292869_
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
                 (_generate-stub292870_
                  (lambda (_deps293032_)
                    (let ((_mod-main293034_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx292866_ 'main)))
                          (_reset-decl293035_
                           (let ()
                             (declare (not safe))
                             (_reset-declare292869_)))
                          (_user-decl293036_
                           (let ()
                             (declare (not safe))
                             (_user-declare292871_))))
                      (for-each
                       (lambda (_dep293038_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl293035_)
                         (newline)
                         (if _user-decl293036_
                             (begin (write _user-decl293036_) (newline))
                             '#!void)
                         (write (let ((__tmp297987
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep293038_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp297987)))
                         (newline))
                       _deps293032_)
                      (write (let ((__tmp297988
                                    (let ((__tmp298001
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp297989
                                           (let ((__tmp297997
                                                  (let ((__tmp297998
                                                         (let ((__tmp297999
                                                                (let ((__tmp298000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp298000))))
                   (declare (not safe))
                   (cons __tmp297999 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp297998)))
                                                 (__tmp297990
                                                  (let ((__tmp297991
                                                         (let ((__tmp297992
                                                                (let ((__tmp297993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp297994
                                      (let ((__tmp297995
                                             (let ((__tmp297996
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp297996 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp297995))))
                                 (declare (not safe))
                                 (cons __tmp297994 '()))))
                          (declare (not safe))
                          (cons _mod-main293034_ __tmp297993))))
                   (declare (not safe))
                   (cons 'apply __tmp297992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp297991 '()))))
                                             (declare (not safe))
                                             (cons __tmp297997 __tmp297990))))
                                      (declare (not safe))
                                      (cons __tmp298001 __tmp297989))))
                               (declare (not safe))
                               (cons 'define __tmp297988)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare292871_
                  (lambda ()
                    (let* ((_gsc-opts292937_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts292867_)))
                           (_gsc-prelude292939_
                            (if _gsc-opts292937_
                                (member '"-prelude" _gsc-opts292937_)
                                '#f))
                           (_gsc-prelude292941_
                            (if _gsc-prelude292939_
                                (read (open-input-string
                                       (cadr _gsc-prelude292939_)))
                                '#f)))
                      (let _lp292944_ ((_rest292946_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude292941_ '())))
                                       (_user-decls292947_ '()))
                        (let* ((_rest292948292956_ _rest292946_)
                               (_else292950292964_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls292947_))
                                      '#f
                                      (let ((__tmp298002
                                             (reverse _user-decls292947_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp298002)))))
                               (_K292952293020_
                                (lambda (_rest292967_ _expr292968_)
                                  (let* ((_expr292969292981_ _expr292968_)
                                         (_else292972292989_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp292944_
                                               _rest292967_
                                               _user-decls292947_)))))
                                    (let ((_K292977293010_
                                           (lambda (_decls293008_)
                                             (let ((__tmp298003
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls292947_
                                                              _decls293008_))))
                                               (declare (not safe))
                                               (_lp292944_
                                                _rest292967_
                                                __tmp298003))))
                                          (_K292974292995_
                                           (lambda (_exprs292993_)
                                             (let ((__tmp298004
                                                    (append _exprs292993_
                                                            _rest292967_)))
                                               (declare (not safe))
                                               (_lp292944_
                                                __tmp298004
                                                _user-decls292947_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr292969292981_))
                                          (let ((_tl292979293015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr292969292981_)))
                                                (_hd292978293013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr292969292981_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd292978293013_
                                                         'declare))
                                                (let ((_decls293018_
                                                       _tl292979293015_))
                                                  (declare (not safe))
                                                  (_K292977293010_
                                                   _decls293018_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd292978293013_
                                                             'begin))
                                                    (let ((_exprs293003_
                                                           _tl292979293015_))
                                                      (declare (not safe))
                                                      (_K292974292995_
                                                       _exprs293003_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else292972292989_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else292972292989_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest292948292956_))
                              (let ((_hd292953293023_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest292948292956_)))
                                    (_tl292954293025_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest292948292956_))))
                                (let* ((_expr293028_ _hd292953293023_)
                                       (_rest293030_ _tl292954293025_))
                                  (declare (not safe))
                                  (_K292952293020_ _rest293030_ _expr293028_)))
                              (let ()
                                (declare (not safe))
                                (_else292950292964_))))))))
                 (_compile-stub292872_
                  (lambda (_output-scm292879_ _output-bin292880_)
                    (let* ((_gerbil-home292882_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir292884_
                            (path-expand '"lib" _gerbil-home292882_))
                           (_runtime292886_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp292888_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home292882_))
                           (_include-gambit-sharp292890_
                            (string-append
                             '"(include \""
                             _gambit-sharp292888_
                             '"\")"))
                           (_bin-scm292892_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx292866_)))
                           (_deps292894_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx292866_)))
                           (_deps292896_
                            (map gxc#find-static-module-file _deps292894_))
                           (_deps292901_
                            (let ((__tmp298005
                                   (lambda (_$obj292898_)
                                     (let ((__tmp298006
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj292898_))))
                                       (declare (not safe))
                                       (not __tmp298006)))))
                              (declare (not safe))
                              (filter __tmp298005 _deps292896_)))
                           (_deps292905_
                            (let ((__tmp298007
                                   (lambda (_f292903_)
                                     (let ((__tmp298008
                                            (member _f292903_
                                                    _runtime292886_)))
                                       (declare (not safe))
                                       (not __tmp298008)))))
                              (declare (not safe))
                              (filter __tmp298007 _deps292901_)))
                           (_output-base292907_
                            (string-append
                             (path-strip-extension _output-scm292879_)))
                           (_output-c292909_
                            (string-append _output-base292907_ '".c"))
                           (_output-o292911_
                            (string-append _output-base292907_ '".o"))
                           (_output-c_292913_
                            (string-append _output-base292907_ '"_.c"))
                           (_output-o_292915_
                            (string-append _output-base292907_ '"_.o"))
                           (_gsc-link-opts292917_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts292919_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts292921_
                            (let ((__tmp298009
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir292884_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp298009)))
                           (_output-ld-opts292923_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros292925_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp298011
                                       (let ((__tmp298012
                                              (let ((__tmp298013
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp292890_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp298013))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp298012))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp298011))
                                (let ((__tmp298010
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp292890_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp298010))))
                           (_gsc-link-opts292927_
                            (append _gsc-link-opts292917_
                                    _gsc-gx-macros292925_))
                           (_rpath292929_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir292884_)))
                           (_default-ld-options292931_
                            (let ((__tmp298014
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp298014))))
                      (let ((__tmp298015
                             (lambda ()
                               (let ((__tmp298016
                                      (path-directory _output-bin292880_)))
                                 (declare (not safe))
                                 (create-directory* __tmp298016)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp298015))
                      (let ((__tmp298017
                             (lambda ()
                               (let ((__tmp298018
                                      (let ((__tmp298019
                                             (let ((__tmp298020
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm292892_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp298020
                                                       _deps292905_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp298019
                                                _runtime292886_))))
                                 (declare (not safe))
                                 (_generate-stub292870_ __tmp298018)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm292879_
                         __tmp298017))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp298026
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp298021
                                   (let ((__tmp298022
                                          (let ((__tmp298023
                                                 (let ((__tmp298024
                                                        (let ((__tmp298025
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm292879_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp298025 _gsc-link-opts292927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_292913_
                                                         __tmp298024))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp298023))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp298022))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp298026
                               __tmp298021))
                            (let ((__tmp298032
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp298027
                                   (let ((__tmp298028
                                          (let ((__tmp298029
                                                 (let ((__tmp298030
                                                        (let ((__tmp298031
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_292913_ '()))))
                  (declare (not safe))
                  (cons _output-c292909_ __tmp298031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp298030
                                                           _gsc-static-opts292921_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp298029
                                                    _gsc-cc-opts292919_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp298028))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp298032
                               __tmp298027))
                            (let ((__tmp298042
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp298033
                                   (let ((__tmp298034
                                          (let ((__tmp298035
                                                 (let ((__tmp298036
                                                        (let ((__tmp298037
                                                               (let ((__tmp298038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp298039
                                     (let ((__tmp298040
                                            (let ((__tmp298041
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options292931_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir292884_
                                                    __tmp298041))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp298040))))
                                (declare (not safe))
                                (cons _rpath292929_ __tmp298039))))
                         (declare (not safe))
                         (foldr1 cons __tmp298038 _output-ld-opts292923_))))
                  (declare (not safe))
                  (cons _output-o_292915_ __tmp298037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o292911_
                                                         __tmp298036))))
                                            (declare (not safe))
                                            (cons _output-bin292880_
                                                  __tmp298035))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp298034))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp298042
                               __tmp298033)))
                          '#!void)))))
          (let* ((_output-bin292874_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx292866_ _opts292867_)))
                 (_output-scm292876_
                  (string-append _output-bin292874_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub292872_ _output-scm292876_ _output-bin292874_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm292876_))))))
    (define gxc#find-export-binding
      (lambda (_ctx292816_ _id292817_)
        (let ((_$e292863_
               (let ((__tmp298044
                      (lambda (_e292818292820_)
                        (let* ((_g292822292832_ _e292818292820_)
                               (_else292824292840_ (lambda () '#f))
                               (_K292826292844_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g292822292832_
                                 'gx#module-export::t))
                              (let* ((_e292827292847_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292822292832_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e292828292850_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292822292832_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e292829292853_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g292822292832_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e292829292853_ '0))
                                    (let ((_e292830292856_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g292822292832_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g292858292860_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g292858292860_
                                                    _id292817_)))
                                           _e292830292856_)
                                          (let ()
                                            (declare (not safe))
                                            (_K292826292844_))
                                          (let ()
                                            (declare (not safe))
                                            (_else292824292840_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else292824292840_))))
                              (let ()
                                (declare (not safe))
                                (_else292824292840_))))))
                     (__tmp298043
                      (##structure-ref
                       _ctx292816_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp298044 __tmp298043))))
          (if _$e292863_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e292863_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx292808_ _id292809_)
        (let ((_$e292811_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx292808_ _id292809_))))
          (if _$e292811_
              ((lambda (_bind292814_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind292814_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id292809_)))
                 (##structure-ref _bind292814_ '1 gx#binding::t '#f))
               _$e292811_)
              (let ((__tmp298045
                     (##structure-ref
                      _ctx292808_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp298045
                 _id292809_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx292695_)
        (letrec* ((_ht292697_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template292698_
                   (lambda (_in292760_ _phi292761_)
                     (let ((_iphi292763_
                            (fx+ _phi292761_
                                 (##direct-structure-ref
                                  _in292760_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports292764_
                            (##structure-ref
                             (##direct-structure-ref
                              _in292760_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp292766_ ((_rest292768_ _imports292764_)
                                        (_r292769_ '()))
                         (let* ((_rest292770292778_ _rest292768_)
                                (_else292772292786_ (lambda () _r292769_))
                                (_K292774292796_
                                 (lambda (_rest292789_ _in292790_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in292790_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi292763_))
                                           (let ((__tmp298052
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in292790_
                                                          _r292769_))))
                                             (declare (not safe))
                                             (_lp292766_
                                              _rest292789_
                                              __tmp298052))
                                           (let ()
                                             (declare (not safe))
                                             (_lp292766_
                                              _rest292789_
                                              _r292769_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in292790_
                                              'gx#module-import::t))
                                           (let ((_iphi292792_
                                                  (fx+ _phi292761_
                                                       (##direct-structure-ref
                                                        _in292790_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi292792_))
                                                 (let ((__tmp298050
                                                        (let ((__tmp298051
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in292790_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp298051 _r292769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp292766_
                                                    _rest292789_
                                                    __tmp298050))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp292766_
                                                    _rest292789_
                                                    _r292769_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in292790_
                                                  'gx#import-set::t))
                                               (let ((_xphi292794_
                                                      (fx+ _iphi292763_
                                                           (##direct-structure-ref
                                                            _in292790_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi292794_))
                                                     (let ((__tmp298048
                                                            (let ((__tmp298049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in292790_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp298049 _r292769_))))
               (declare (not safe))
               (_lp292766_ _rest292789_ __tmp298048))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi292794_)
                                                         (let ((__tmp298046
                                                                (let ((__tmp298047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template292698_
                                  _in292790_
                                  _iphi292763_))))
                          (declare (not safe))
                          (foldl1 cons _r292769_ __tmp298047))))
                   (declare (not safe))
                   (_lp292766_ _rest292789_ __tmp298046))
                 (let ()
                   (declare (not safe))
                   (_lp292766_ _rest292789_ _r292769_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp292766_
                                                  _rest292789_
                                                  _r292769_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest292770292778_))
                               (let ((_hd292775292799_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest292770292778_)))
                                     (_tl292776292801_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest292770292778_))))
                                 (let* ((_in292804_ _hd292775292799_)
                                        (_rest292806_ _tl292776292801_))
                                   (declare (not safe))
                                   (_K292774292796_ _rest292806_ _in292804_)))
                               (let ()
                                 (declare (not safe))
                                 (_else292772292786_))))))))
                  (_find-deps292699_
                   (lambda (_rest292706_ _deps292707_)
                     (let* ((_rest292708292716_ _rest292706_)
                            (_else292710292724_ (lambda () _deps292707_))
                            (_K292712292748_
                             (lambda (_rest292727_ _hd292728_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd292728_
                                      'gx#module-context::t))
                                   (let ((_id292730_
                                          (##structure-ref
                                           _hd292728_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports292731_
                                          (##structure-ref
                                           _hd292728_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht292697_
                                            _id292730_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps292699_
                                            _rest292727_
                                            _deps292707_))
                                         (let ((_$e292733_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd292728_))))
                                           (if _$e292733_
                                               ((lambda (_pre292736_)
                                                  (let ((_xdeps292738_
                                                         (let ((__tmp298065
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre292736_ _imports292731_))))
                   (declare (not safe))
                   (_find-deps292699_ __tmp298065 _deps292707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht292697_
                                                       _id292730_
                                                       _hd292728_))
                                                    (let ((__tmp298066
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd292728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps292738_))))
              (declare (not safe))
              (_find-deps292699_ _rest292727_ __tmp298066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e292733_)
                                               (let ((_xdeps292740_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps292699_
                                                         _imports292731_
                                                         _deps292707_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht292697_
                                                    _id292730_
                                                    _hd292728_))
                                                 (let ((__tmp298064
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd292728_
                                                                _xdeps292740_))))
                                                   (declare (not safe))
                                                   (_find-deps292699_
                                                    _rest292727_
                                                    __tmp298064)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd292728_
                                          'gx#prelude-context::t))
                                       (let ((_id292742_
                                              (##structure-ref
                                               _hd292728_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht292697_
                                                _id292742_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps292699_
                                                _rest292727_
                                                _deps292707_))
                                             (let ((_xdeps292744_
                                                    (let ((__tmp298062
                                                           (##structure-ref
                                                            _hd292728_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps292699_
                                                       __tmp298062
                                                       _deps292707_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht292697_
                                                      _id292742_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps292699_
                                                      _rest292727_
                                                      _xdeps292744_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht292697_
                                                        _id292742_
                                                        _hd292728_))
                                                     (let ((__tmp298063
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd292728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps292744_))))
               (declare (not safe))
               (_find-deps292699_ _rest292727_ __tmp298063)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd292728_
                                              'gx#module-import::t))
                                           (if (let ((__tmp298061
                                                      (##direct-structure-ref
                                                       _hd292728_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp298061))
                                               (let ((__tmp298059
                                                      (let ((__tmp298060
                                                             (##direct-structure-ref
                                                              _hd292728_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp298060
                                                              _rest292727_))))
                                                 (declare (not safe))
                                                 (_find-deps292699_
                                                  __tmp298059
                                                  _deps292707_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps292699_
                                                  _rest292727_
                                                  _deps292707_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd292728_
                                                  'gx#module-export::t))
                                               (let ((__tmp298057
                                                      (let ((__tmp298058
                                                             (##direct-structure-ref
                                                              _hd292728_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp298058
                                                              _rest292727_))))
                                                 (declare (not safe))
                                                 (_find-deps292699_
                                                  __tmp298057
                                                  _deps292707_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd292728_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp298056
                                                              (##direct-structure-ref
                                                               _hd292728_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp298056))
                                                       (let ((__tmp298054
                                                              (let ((__tmp298055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd292728_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp298055 _rest292727_))))
                 (declare (not safe))
                 (_find-deps292699_ __tmp298054 _deps292707_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd292728_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps292746_
                           (let ()
                             (declare (not safe))
                             (_import-set-template292698_ _hd292728_ '0)))
                          (__tmp298053
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest292727_ _xdeps292746_))))
                     (declare (not safe))
                     (_find-deps292699_ __tmp298053 _deps292707_))
                   (let ()
                     (declare (not safe))
                     (_find-deps292699_ _rest292727_ _deps292707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd292728_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest292708292716_))
                           (let ((_hd292713292751_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest292708292716_)))
                                 (_tl292714292753_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest292708292716_))))
                             (let* ((_hd292756_ _hd292713292751_)
                                    (_rest292758_ _tl292714292753_))
                               (declare (not safe))
                               (_K292712292748_ _rest292758_ _hd292756_)))
                           (let ()
                             (declare (not safe))
                             (_else292710292724_)))))))
          (reverse (let ((__tmp298067
                          (let ((__tmp298068
                                 (let ((_$e292701_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx292695_))))
                                   (if _$e292701_
                                       ((lambda (_pre292704_)
                                          (let ((__tmp298069
                                                 (##structure-ref
                                                  _ctx292695_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre292704_ __tmp298069)))
                                        _$e292701_)
                                       (##structure-ref
                                        _ctx292695_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps292699_ __tmp298068 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp298067))))))
    (define gxc#find-static-module-file
      (lambda (_ctx292626_)
        (let* ((_context-id292628_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx292626_
                       'gx#module-context::t))
                    (##structure-ref _ctx292626_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx292626_)))
               (_scm292630_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id292628_))
                 '".scm"))
               (_dirs292632_ (gx#current-expander-module-library-path))
               (_dirs292638_
                (let ((_user-libpath292634_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath292634_
                      (let ((_user-libpath292636_
                             (path-expand '"lib" _user-libpath292634_)))
                        (if (member _user-libpath292636_ _dirs292632_)
                            _dirs292632_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath292636_ _dirs292632_))))
                      _dirs292632_)))
               (_dirs292647_
                (let ((_$e292640_ (gxc#current-compile-output-dir)))
                  (if _$e292640_
                      ((lambda (_g292642292644_)
                         (let ()
                           (declare (not safe))
                           (cons _g292642292644_ _dirs292638_)))
                       _$e292640_)
                      _dirs292638_)))
               (_dirs292653_
                (map (lambda (_g292648292650_)
                       (path-expand '"static" _g292648292650_))
                     _dirs292647_)))
          (let _lp292656_ ((_rest292658_ _dirs292653_))
            (let* ((_rest292659292667_ _rest292658_)
                   (_else292661292675_
                    (lambda ()
                      (let ((__tmp298070
                             (##structure-ref
                              _ctx292626_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp298070
                         _scm292630_))))
                   (_K292663292683_
                    (lambda (_rest292678_ _dir292679_)
                      (let ((_path292681_
                             (path-expand _scm292630_ _dir292679_)))
                        (if (file-exists? _path292681_)
                            _path292681_
                            (let ()
                              (declare (not safe))
                              (_lp292656_ _rest292678_)))))))
              (if (let () (declare (not safe)) (##pair? _rest292659292667_))
                  (let ((_hd292664292686_
                         (let ()
                           (declare (not safe))
                           (##car _rest292659292667_)))
                        (_tl292665292688_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292659292667_))))
                    (let* ((_dir292691_ _hd292664292686_)
                           (_rest292693_ _tl292665292688_))
                      (declare (not safe))
                      (_K292663292683_ _rest292693_ _dir292691_)))
                  (let () (declare (not safe)) (_else292661292675_))))))))
    (define gxc#file-empty?
      (lambda (_path292624_)
        (let ((__tmp298071 (file-info-size (file-info _path292624_ '#t))))
          (declare (not safe))
          (zero? __tmp298071))))
    (define gxc#compile-top-module
      (lambda (_ctx292613_)
        (let ((__tmp298075
               (lambda ()
                 (let ((__tmp298076
                        (##structure-ref
                         _ctx292613_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp298076))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp298077
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx292613_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp298077))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx292613_))
                 (if (let ((__tmp298080
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx292613_))))
                       (declare (not safe))
                       (null? __tmp298080))
                     (let* ((_thr1292618_
                             (let ((__tmp298078
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx292613_)))))
                               (declare (not safe))
                               (spawn __tmp298078)))
                            (_thr2292621_
                             (let ((__tmp298079
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx292613_)))))
                               (declare (not safe))
                               (spawn __tmp298079))))
                       (let () (declare (not safe)) (gxc#join! _thr1292618_))
                       (let () (declare (not safe)) (gxc#join! _thr2292621_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx292613_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx292613_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx292613_))
                     '#!void)))
              (__tmp298074
               (let ((__obj297879
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj297879)
                 __obj297879))
              (__tmp298073
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp298072 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp298075
           gx#current-expander-context
           _ctx292613_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp298074
           gxc#current-compile-runtime-sections
           __tmp298073
           gxc#current-compile-runtime-names
           __tmp298072))))
    (define gxc#collect-bindings
      (lambda (_ctx292611_)
        (let ((__tmp298081
               (##structure-ref _ctx292611_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp298081))))
    (define gxc#compile-runtime-code
      (lambda (_ctx292557_)
        (letrec ((_compile1292559_
                  (lambda (_ctx292600_)
                    (let* ((_code292602_
                            (##structure-ref
                             _ctx292600_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt292606_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code292602_))
                                (let ((_idstr292604_
                                       (let ((__tmp298082
                                              (##structure-ref
                                               _ctx292600_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp298082))))
                                  (string-append _idstr292604_ '"__0"))
                                '#f)))
                      (if _rt292606_
                          (begin
                            (let ((__tmp298083
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp298083 _ctx292600_ _rt292606_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code292561_
                               _ctx292600_
                               _code292602_)))
                          (let ((_path292609_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx292600_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path292609_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code292562_
                         _ctx292600_
                         _code292602_
                         _rt292606_)))))
                 (_context-timestamp292560_
                  (lambda (_ctx292598_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx292598_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code292561_
                  (lambda (_ctx292580_ _code292581_)
                    (let* ((_lifts292583_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code292586_
                            (let ((__tmp298086
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code292581_))))
                                  (__tmp298085
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp298084
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp298086
                               gx#current-expander-context
                               _ctx292580_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts292583_
                               gxc#current-compile-marks
                               __tmp298085
                               gxc#current-compile-identifiers
                               __tmp298084)))
                           (_runtime-code292588_
                            (if (let ((__tmp298090 (unbox _lifts292583_)))
                                  (declare (not safe))
                                  (null? __tmp298090))
                                _runtime-code292586_
                                (let ((__tmp298087
                                       (let ((__tmp298089
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code292586_
                                                      '())))
                                             (__tmp298088
                                              (reverse (unbox _lifts292583_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp298089
                                                 __tmp298088))))
                                  (declare (not safe))
                                  (cons 'begin __tmp298087))))
                           (_runtime-code292590_
                            (let ((__tmp298091
                                   (let ((__tmp298093
                                          (let ((__tmp298094
                                                 (let ((__tmp298097
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp292560_
                                                           _ctx292580_)))
                                                       (__tmp298095
                                                        (let ((__tmp298096
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp298096
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp298097
                                                         __tmp298095))))
                                            (declare (not safe))
                                            (cons 'define __tmp298094)))
                                         (__tmp298092
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code292588_ '()))))
                                     (declare (not safe))
                                     (cons __tmp298093 __tmp298092))))
                              (declare (not safe))
                              (cons 'begin __tmp298091)))
                           (_scm0292592_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx292580_
                               '0
                               '".scm"))))
                      (let ((_scms292595_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx292580_))))
                        (let ((__tmp298098
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0292592_
                                    _runtime-code292590_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp298098
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms292595_)
                            (delete-file _scms292595_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0292592_
                           '" => "
                           _scms292595_))
                        (copy-file _scm0292592_ _scms292595_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0292592_))))))
                 (_generate-loader-code292562_
                  (lambda (_ctx292569_ _code292570_ _rt292571_)
                    (let* ((_loader-code292574_
                            (let ((__tmp298099
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code292570_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp298099
                               gx#current-expander-context
                               _ctx292569_)))
                           (_loader-code292576_
                            (if _rt292571_
                                (let ((__tmp298100
                                       (let ((__tmp298101
                                              (let ((__tmp298102
                                                     (let ((__tmp298103
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt292571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp298103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298102 '()))))
                                         (declare (not safe))
                                         (cons _loader-code292574_
                                               __tmp298101))))
                                  (declare (not safe))
                                  (cons 'begin __tmp298100))
                                _loader-code292574_)))
                      (let ((__tmp298104
                             (lambda ()
                               (let ((__tmp298105
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx292569_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp298105
                                  _loader-code292576_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp298104
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules292564_
                 (let ((__tmp298106
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx292557_))))
                   (declare (not safe))
                   (cons _ctx292557_ __tmp298106))))
            (for-each
             (lambda (_ctx292566_)
               (let ((__tmp298107
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1292559_ _ctx292566_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp298107
                  gxc#current-compile-decls
                  '())))
             _all-modules292564_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx292454_)
        (letrec ((_compile-ssi292456_
                  (lambda (_code292527_)
                    (let* ((_path292529_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx292454_
                               '#f
                               '".ssi")))
                           (_prelude292540_
                            (let* ((_super292531_
                                    (##structure-ref
                                     _ctx292454_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e292533_
                                    (##structure-ref
                                     _super292531_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e292533_
                                  ((lambda (_g292535292537_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g292535292537_)))
                                   _$e292533_)
                                  ':<root>)))
                           (_ns292542_
                            (##structure-ref
                             _ctx292454_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr292544_
                            (symbol->string
                             (##structure-ref
                              _ctx292454_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg292551_
                            (let ((_$e292546_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr292544_ '#\/))))
                              (if _$e292546_
                                  ((lambda (_x292549_)
                                     (string->symbol
                                      (substring _idstr292544_ '0 _x292549_)))
                                   _$e292546_)
                                  '#f)))
                           (_rt292553_
                            (let ((__tmp298108
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp298108 _ctx292454_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path292529_))
                      (let ((__tmp298109
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude292540_))
                               (if _pkg292551_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg292551_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns292542_))
                               (newline)
                               (pretty-print _code292527_)
                               (if _rt292553_
                                   (pretty-print
                                    (let ((__tmp298110
                                           (let ((__tmp298114
                                                  (let ((__tmp298115
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp298115)))
                                                 (__tmp298111
                                                  (let ((__tmp298112
                                                         (let ((__tmp298113
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt292553_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp298113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp298112 '()))))
                                             (declare (not safe))
                                             (cons __tmp298114 __tmp298111))))
                                      (declare (not safe))
                                      (cons '%#call __tmp298110)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path292529_
                         __tmp298109)))))
                 (_compile-phi292457_
                  (lambda (_part292467_)
                    (let* ((_part292468292481_ _part292467_)
                           (_E292470292485_
                            (lambda ()
                              (error '"No clause matching"
                                     _part292468292481_)))
                           (_K292471292496_
                            (lambda (_code292488_
                                     _n292489_
                                     _phi292490_
                                     _phi-ctx292491_)
                              (let* ((_code292494_
                                      (let ((__tmp298116
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code292488_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp298116
                                         gx#current-expander-context
                                         _phi-ctx292491_
                                         gx#current-expander-phi
                                         _phi292490_)))
                                     (__tmp298117
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx292454_
                                         _n292489_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp298117
                                 _code292494_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part292468292481_))
                          (let ((_hd292472292499_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part292468292481_)))
                                (_tl292473292501_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part292468292481_))))
                            (let ((_phi-ctx292504_ _hd292472292499_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl292473292501_))
                                  (let ((_hd292474292506_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl292473292501_)))
                                        (_tl292475292508_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl292473292501_))))
                                    (let ((_phi292511_ _hd292474292506_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl292475292508_))
                                          (let ((_hd292476292513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl292475292508_)))
                                                (_tl292477292515_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl292475292508_))))
                                            (let ((_n292518_ _hd292476292513_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl292477292515_))
                                                  (let ((_hd292478292520_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl292477292515_)))
                                                        (_tl292479292522_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl292477292515_))))
                                                    (let ((_code292525_
                                                           _hd292478292520_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl292479292522_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K292471292496_
                                                             _code292525_
                                                             _n292518_
                                                             _phi292511_
                                                             _phi-ctx292504_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E292470292485_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E292470292485_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E292470292485_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E292470292485_)))))
                          (let () (declare (not safe)) (_E292470292485_)))))))
          (let ((_g298118_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx292454_))))
            (begin
              (let ((_g298119_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g298118_)
                           (##vector-length _g298118_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g298119_ 2)))
                    (error "Context expects 2 values" _g298119_)))
              (let ((_ssi-code292459_
                     (let () (declare (not safe)) (##vector-ref _g298118_ 0)))
                    (_phi-code292460_
                     (let () (declare (not safe)) (##vector-ref _g298118_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi292456_ _ssi-code292459_))
                  (let ((_threads292465_
                         (map (lambda (_code292462_)
                                (let ((__tmp298120
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi292457_
                                            _code292462_)))))
                                  (declare (not safe))
                                  (spawn __tmp298120)))
                              _phi-code292460_)))
                    (for-each gxc#join! _threads292465_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx292437_)
        (let* ((_path292439_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx292437_ '#f '".ssxi.ss")))
               (_code292441_
                (let ((__tmp298121
                       (##structure-ref
                        _ctx292437_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp298121)))
               (_idstr292443_
                (symbol->string
                 (##structure-ref _ctx292437_ '1 gx#expander-context::t '#f)))
               (_pkg292450_
                (let ((_$e292445_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr292443_ '#\/))))
                  (if _$e292445_
                      ((lambda (_x292448_)
                         (string->symbol
                          (substring _idstr292443_ '0 _x292448_)))
                       _$e292445_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path292439_))
          (let ((__tmp298122
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg292450_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg292450_))
                       '#!void)
                   (newline)
                   (pretty-print _code292441_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path292439_ __tmp298122)))))
    (define gxc#generate-meta-code
      (lambda (_ctx292430_)
        (let* ((_state292432_
                (let ((__obj297880
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj297880 _ctx292430_)
                  __obj297880))
               (_ssi-code292434_
                (let ((__tmp298123
                       (##structure-ref
                        _ctx292430_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp298123 _state292432_))))
          (values _ssi-code292434_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state292432_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx292423_)
        (let ((_lifts292425_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp298126
                 (lambda ()
                   (let ((_code292428_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx292423_))))
                     (if (let ((__tmp298130 (unbox _lifts292425_)))
                           (declare (not safe))
                           (null? __tmp298130))
                         _code292428_
                         (let ((__tmp298127
                                (let ((__tmp298129
                                       (let ()
                                         (declare (not safe))
                                         (cons _code292428_ '())))
                                      (__tmp298128
                                       (reverse (unbox _lifts292425_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp298129 __tmp298128))))
                           (declare (not safe))
                           (cons 'begin __tmp298127))))))
                (__tmp298125
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp298124
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp298126
             gxc#current-compile-lift
             _lifts292425_
             gxc#current-compile-marks
             __tmp298125
             gxc#current-compile-identifiers
             __tmp298124)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx292419_)
        (let ((_modules292421_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp298131
                 (##structure-ref _ctx292419_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp298131 _modules292421_))
          (reverse (unbox _modules292421_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path292402_ _code292403_ _phi?292404_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path292402_))
        (let ((__tmp298132
               (lambda ()
                 (pretty-print
                  (let ((__tmp298133
                         (let ((__tmp298140
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp298134
                                (let ((__tmp298139
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp298135
                                       (let ((__tmp298138
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp298136
                                              (let ((__tmp298137
                                                     (if _phi?292404_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp298137))))
                                         (declare (not safe))
                                         (cons __tmp298138 __tmp298136))))
                                  (declare (not safe))
                                  (cons __tmp298139 __tmp298135))))
                           (declare (not safe))
                           (cons __tmp298140 __tmp298134))))
                    (declare (not safe))
                    (cons 'declare __tmp298133)))
                 (pretty-print _code292403_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path292402_ __tmp298132))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path292402_ _phi?292404_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path292402_))))
    (define gxc#compile-scm-file__0
      (lambda (_path292410_ _code292411_)
        (let ((_phi?292413_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path292410_ _code292411_ _phi?292413_))))
    (define gxc#compile-scm-file
      (lambda _g298142_
        (let ((_g298141_ (let () (declare (not safe)) (##length _g298142_))))
          (cond ((let () (declare (not safe)) (##fx= _g298141_ 2))
                 (apply (lambda (_path292410_ _code292411_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path292410_
                             _code292411_)))
                        _g298142_))
                ((let () (declare (not safe)) (##fx= _g298141_ 3))
                 (apply (lambda (_path292415_ _code292416_ _phi?292417_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path292415_
                             _code292416_
                             _phi?292417_)))
                        _g298142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g298142_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?292303_)
        (let _lp292305_ ((_rest292307_ (gxc#current-compile-gsc-options))
                         (_opts292308_ '()))
          (let* ((_rest292309292329_ _rest292307_)
                 (_else292313292337_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?292303_))
                             (gxc#current-compile-debug))
                        (let ((__tmp298143
                               (let ((__tmp298144 (reverse _opts292308_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp298144))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp298143))
                        (reverse _opts292308_)))))
            (let ((_K292323292380_
                   (lambda (_rest292378_)
                     (let ()
                       (declare (not safe))
                       (_lp292305_ _rest292378_ _opts292308_))))
                  (_K292318292362_
                   (lambda (_rest292360_)
                     (let ()
                       (declare (not safe))
                       (_lp292305_ _rest292360_ _opts292308_))))
                  (_K292315292344_
                   (lambda (_rest292341_ _opt292342_)
                     (let ((__tmp298145
                            (let ()
                              (declare (not safe))
                              (cons _opt292342_ _opts292308_))))
                       (declare (not safe))
                       (_lp292305_ _rest292341_ __tmp298145)))))
              (if (let () (declare (not safe)) (##pair? _rest292309292329_))
                  (let ((_tl292325292385_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292309292329_)))
                        (_hd292324292383_
                         (let ()
                           (declare (not safe))
                           (##car _rest292309292329_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292324292383_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292325292385_))
                            (let* ((_tl292327292388_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl292325292385_)))
                                   (_rest292391_ _tl292327292388_))
                              (declare (not safe))
                              (_K292323292380_ _rest292391_))
                            (let ((_opt292352_ _hd292324292383_)
                                  (_rest292354_ _tl292325292385_))
                              (let ()
                                (declare (not safe))
                                (_K292315292344_ _rest292354_ _opt292352_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292324292383_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292325292385_))
                                (let* ((_tl292322292370_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl292325292385_)))
                                       (_rest292373_ _tl292322292370_))
                                  (declare (not safe))
                                  (_K292318292362_ _rest292373_))
                                (let ((_opt292352_ _hd292324292383_)
                                      (_rest292354_ _tl292325292385_))
                                  (let ()
                                    (declare (not safe))
                                    (_K292315292344_
                                     _rest292354_
                                     _opt292352_))))
                            (let ((_opt292352_ _hd292324292383_)
                                  (_rest292354_ _tl292325292385_))
                              (let ()
                                (declare (not safe))
                                (_K292315292344_ _rest292354_ _opt292352_))))))
                  (let () (declare (not safe)) (_else292313292337_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?292397_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?292397_))))
    (define gxc#gsc-link-options
      (lambda _g298147_
        (let ((_g298146_ (let () (declare (not safe)) (##length _g298147_))))
          (cond ((let () (declare (not safe)) (##fx= _g298146_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g298147_))
                ((let () (declare (not safe)) (##fx= _g298146_ 1))
                 (apply (lambda (_phi?292399_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?292399_)))
                        _g298147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g298147_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?292204_)
        (let _lp292206_ ((_rest292208_ (gxc#current-compile-gsc-options))
                         (_opts292209_ '()))
          (let* ((_rest292210292230_ _rest292208_)
                 (_else292214292238_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?292204_))
                             (gxc#current-compile-debug))
                        (let ((__tmp298148
                               (let ((__tmp298149 (reverse _opts292209_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp298149))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp298148))
                        (reverse _opts292209_)))))
            (let ((_K292224292277_
                   (lambda (_rest292274_ _opt292275_)
                     (let ((__tmp298150
                            (let ((__tmp298151
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts292209_))))
                              (declare (not safe))
                              (cons _opt292275_ __tmp298151))))
                       (declare (not safe))
                       (_lp292206_ _rest292274_ __tmp298150))))
                  (_K292219292258_
                   (lambda (_rest292256_)
                     (let ()
                       (declare (not safe))
                       (_lp292206_ _rest292256_ _opts292209_))))
                  (_K292216292244_
                   (lambda (_rest292242_)
                     (let ()
                       (declare (not safe))
                       (_lp292206_ _rest292242_ _opts292209_)))))
              (if (let () (declare (not safe)) (##pair? _rest292210292230_))
                  (let ((_tl292226292282_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292210292230_)))
                        (_hd292225292280_
                         (let ()
                           (declare (not safe))
                           (##car _rest292210292230_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292225292280_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292226292282_))
                            (let ((_tl292228292287_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl292226292282_)))
                                  (_hd292227292285_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl292226292282_))))
                              (let ((_opt292290_ _hd292227292285_)
                                    (_rest292292_ _tl292228292287_))
                                (let ()
                                  (declare (not safe))
                                  (_K292224292277_ _rest292292_ _opt292290_))))
                            (let ((_rest292250_ _tl292226292282_))
                              (declare (not safe))
                              (_K292216292244_ _rest292250_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292225292280_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292226292282_))
                                (let* ((_tl292223292266_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl292226292282_)))
                                       (_rest292269_ _tl292223292266_))
                                  (declare (not safe))
                                  (_K292219292258_ _rest292269_))
                                (let ((_rest292250_ _tl292226292282_))
                                  (declare (not safe))
                                  (_K292216292244_ _rest292250_)))
                            (let ((_rest292250_ _tl292226292282_))
                              (declare (not safe))
                              (_K292216292244_ _rest292250_)))))
                  (let () (declare (not safe)) (_else292214292238_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?292298_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?292298_))))
    (define gxc#gsc-cc-options
      (lambda _g298153_
        (let ((_g298152_ (let () (declare (not safe)) (##length _g298153_))))
          (cond ((let () (declare (not safe)) (##fx= _g298152_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g298153_))
                ((let () (declare (not safe)) (##fx= _g298152_ 1))
                 (apply (lambda (_phi?292300_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?292300_)))
                        _g298153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g298153_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir292199_)
        (let* ((_user-staticdir292201_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp298154
                (let ((__tmp298155
                       (string-append
                        '"-I "
                        _staticdir292199_
                        '" -I "
                        _user-staticdir292201_)))
                  (declare (not safe))
                  (cons __tmp298155 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp298154))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp292111_ ((_rest292113_ (gxc#current-compile-gsc-options))
                         (_opts292114_ '()))
          (let* ((_rest292115292135_ _rest292113_)
                 (_else292119292143_ (lambda () _opts292114_)))
            (let ((_K292129292186_
                   (lambda (_rest292184_)
                     (let ()
                       (declare (not safe))
                       (_lp292111_ _rest292184_ _opts292114_))))
                  (_K292124292164_
                   (lambda (_rest292161_ _opt292162_)
                     (let ((__tmp298156
                            (append _opts292114_
                                    (let ((__tmp298157
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt292162_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp298157)))))
                       (declare (not safe))
                       (_lp292111_ _rest292161_ __tmp298156))))
                  (_K292121292149_
                   (lambda (_rest292147_)
                     (let ()
                       (declare (not safe))
                       (_lp292111_ _rest292147_ _opts292114_)))))
              (if (let () (declare (not safe)) (##pair? _rest292115292135_))
                  (let ((_tl292131292191_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest292115292135_)))
                        (_hd292130292189_
                         (let ()
                           (declare (not safe))
                           (##car _rest292115292135_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd292130292189_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl292131292191_))
                            (let* ((_tl292133292194_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl292131292191_)))
                                   (_rest292197_ _tl292133292194_))
                              (declare (not safe))
                              (_K292129292186_ _rest292197_))
                            (let ((_rest292155_ _tl292131292191_))
                              (declare (not safe))
                              (_K292121292149_ _rest292155_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd292130292189_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl292131292191_))
                                (let ((_tl292128292174_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl292131292191_)))
                                      (_hd292127292172_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl292131292191_))))
                                  (let ((_opt292177_ _hd292127292172_)
                                        (_rest292179_ _tl292128292174_))
                                    (let ()
                                      (declare (not safe))
                                      (_K292124292164_
                                       _rest292179_
                                       _opt292177_))))
                                (let ((_rest292155_ _tl292131292191_))
                                  (declare (not safe))
                                  (_K292121292149_ _rest292155_)))
                            (let ((_rest292155_ _tl292131292191_))
                              (declare (not safe))
                              (_K292121292149_ _rest292155_)))))
                  (let () (declare (not safe)) (_else292119292143_))))))))
    (define gxc#not-string-empty?
      (lambda (_str292108_)
        (let ((__tmp298158
               (let () (declare (not safe)) (string-empty? _str292108_))))
          (declare (not safe))
          (not __tmp298158))))
    (define gxc#gsc-compile-file
      (lambda (_path292076_ _phi?292077_)
        (letrec ((_gsc-link-path292079_
                  (lambda (_base-path292100_)
                    (let _lp292102_ ((_n292104_ '1))
                      (let ((_path292106_
                             (string-append
                              _base-path292100_
                              '".o"
                              (number->string _n292104_))))
                        (if (file-exists? _path292106_)
                            (let ((__tmp298159
                                   (let ()
                                     (declare (not safe))
                                     (+ _n292104_ '1))))
                              (declare (not safe))
                              (_lp292102_ __tmp298159))
                            _path292106_))))))
          (let* ((_base-path292081_ (path-strip-extension _path292076_))
                 (_path-c292083_ (string-append _base-path292081_ '".c"))
                 (_path-o292085_ (string-append _base-path292081_ '".o"))
                 (_link-path292087_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path292079_ _base-path292081_)))
                 (_link-path-c292089_ (string-append _link-path292087_ '".c"))
                 (_link-path-o292091_ (string-append _link-path292087_ '".o"))
                 (_gsc-link-opts292093_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?292077_)))
                 (_gsc-cc-opts292095_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?292077_)))
                 (_gcc-ld-opts292097_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp298166 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp298160
                   (let ((__tmp298161
                          (let ((__tmp298162
                                 (let ((__tmp298163
                                        (let ((__tmp298164
                                               (let ((__tmp298165
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path292076_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp298165
                                                         _gsc-link-opts292093_))))
                                          (declare (not safe))
                                          (cons _link-path-c292089_
                                                __tmp298164))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp298163))))
                            (declare (not safe))
                            (cons '"-flat" __tmp298162))))
                     (declare (not safe))
                     (cons '"-link" __tmp298161))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp298166 __tmp298160))
            (let ((__tmp298173 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp298167
                   (let ((__tmp298168
                          (let ((__tmp298169
                                 (let ((__tmp298170
                                        (let ((__tmp298171
                                               (let ((__tmp298172
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c292089_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c292083_
                                                       __tmp298172))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp298171
                                                  _gsc-cc-opts292095_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp298170))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp298169))))
                     (declare (not safe))
                     (cons '"-obj" __tmp298168))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp298173 __tmp298167))
            (let ((__tmp298179 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp298174
                   (let ((__tmp298175
                          (let ((__tmp298176
                                 (let ((__tmp298177
                                        (let ((__tmp298178
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o292091_
                                                       _gcc-ld-opts292097_))))
                                          (declare (not safe))
                                          (cons _path-o292085_ __tmp298178))))
                                   (declare (not safe))
                                   (cons _link-path292087_ __tmp298177))))
                            (declare (not safe))
                            (cons '"-o" __tmp298176))))
                     (declare (not safe))
                     (cons '"-shared" __tmp298175))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp298179
               __tmp298174))
            (for-each
             delete-file
             (let ((__tmp298180
                    (let ((__tmp298181
                           (let ((__tmp298182
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o292091_ '()))))
                             (declare (not safe))
                             (cons _link-path-c292089_ __tmp298182))))
                      (declare (not safe))
                      (cons _path-o292085_ __tmp298181))))
               (declare (not safe))
               (cons _path-c292083_ __tmp298180)))))))
    (define gxc#compile-output-file
      (lambda (_ctx292047_ _n292048_ _ext292049_)
        (letrec ((_module-relative-path292051_
                  (lambda (_ctx292074_)
                    (path-strip-directory
                     (let ((__tmp298183
                            (##structure-ref
                             _ctx292074_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp298183)))))
                 (_module-source-directory292052_
                  (lambda (_ctx292070_)
                    (path-directory
                     (let ((_mpath292072_
                            (##structure-ref
                             _ctx292070_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath292072_))
                           _mpath292072_
                           (let ()
                             (declare (not safe))
                             (last _mpath292072_)))))))
                 (_section-string292053_
                  (lambda (_n292068_)
                    (if (let () (declare (not safe)) (number? _n292068_))
                        (number->string _n292068_)
                        (if (let () (declare (not safe)) (symbol? _n292068_))
                            (symbol->string _n292068_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n292068_))
                                _n292068_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n292068_)))))))
                 (_file-name292054_
                  (lambda (_path292066_)
                    (if _n292048_
                        (string-append
                         _path292066_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string292053_ _n292048_))
                         _ext292049_)
                        (string-append _path292066_ _ext292049_))))
                 (_file-path292055_
                  (lambda ()
                    (let ((_$e292061_ (gxc#current-compile-output-dir)))
                      (if _$e292061_
                          ((lambda (_outdir292064_)
                             (path-expand
                              (let ((__tmp298185
                                     (let ((__tmp298186
                                            (##structure-ref
                                             _ctx292047_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp298186))))
                                (declare (not safe))
                                (_file-name292054_ __tmp298185))
                              _outdir292064_))
                           _$e292061_)
                          (path-expand
                           (let ((__tmp298184
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path292051_
                                     _ctx292047_))))
                             (declare (not safe))
                             (_file-name292054_ __tmp298184))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory292052_
                              _ctx292047_))))))))
          (let ((_path292057_
                 (let () (declare (not safe)) (_file-path292055_))))
            (let ((__tmp298187
                   (lambda ()
                     (let ((__tmp298188 (path-directory _path292057_)))
                       (declare (not safe))
                       (create-directory* __tmp298188)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp298187))
            _path292057_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx292029_)
        (letrec ((_file-name292031_
                  (lambda (_id292045_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id292045_))
                     '".scm")))
                 (_file-path292032_
                  (lambda ()
                    (let* ((_file292038_
                            (let ((__tmp298189
                                   (##structure-ref
                                    _ctx292029_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name292031_ __tmp298189)))
                           (_$e292040_ (gxc#current-compile-output-dir)))
                      (if _$e292040_
                          ((lambda (_outdir292043_)
                             (path-expand
                              _file292038_
                              (path-expand '"static" _outdir292043_)))
                           _$e292040_)
                          (path-expand _file292038_ '"static"))))))
          (let ((_path292034_
                 (let () (declare (not safe)) (_file-path292032_))))
            (let ((__tmp298190
                   (lambda ()
                     (let ((__tmp298191 (path-directory _path292034_)))
                       (declare (not safe))
                       (create-directory* __tmp298191)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp298190))
            _path292034_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx292023_ _opts292024_)
        (let ((_$e292026_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts292024_))))
          (if _$e292026_
              (values _$e292026_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx292023_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr292016_)
        (if (let () (declare (not safe)) (string? _idstr292016_))
            (let* ((_str292018_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr292016_)))
                   (_strs292020_
                    (let ()
                      (declare (not safe))
                      (string-split _str292018_ '#\/))))
              (let () (declare (not safe)) (string-join _strs292020_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr292016_))
                (let ((__tmp298192 (symbol->string _idstr292016_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp298192))
                (error '"Bad module id" _idstr292016_)))))
    (define gxc#invoke__%
      (lambda (_g298193_
               _stdout-redirection291980291984_
               _stderr-redirection291981291986_
               _program291988_
               _args291989_)
        (let* ((_stdout-redirection291991_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection291980291984_ absent-value))
                    '#f
                    _stdout-redirection291980291984_))
               (_stderr-redirection291993_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection291981291986_ absent-value))
                    '#f
                    _stderr-redirection291981291986_)))
          (let ((__tmp298194
                 (let ()
                   (declare (not safe))
                   (cons _program291988_ _args291989_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp298194))
          (let ((_proc291995_
                 (open-process
                  (let ((__tmp298195
                         (let ((__tmp298196
                                (let ((__tmp298197
                                       (let ((__tmp298198
                                              (let ((__tmp298199
                                                     (let ((__tmp298200
                                                            (let ((__tmp298201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection291993_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp298201))))
               (declare (not safe))
               (cons _stdout-redirection291991_ __tmp298200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp298199))))
                                         (declare (not safe))
                                         (cons _args291989_ __tmp298198))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp298197))))
                           (declare (not safe))
                           (cons _program291988_ __tmp298196))))
                    (declare (not safe))
                    (cons 'path: __tmp298195)))))
            (if (or _stdout-redirection291991_ _stderr-redirection291993_)
                (read-line _proc291995_ '#f)
                '#!void)
            (let ((_status292000_ (process-status _proc291995_)))
              (close-port _proc291995_)
              (if (let () (declare (not safe)) (zero? _status292000_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program291988_))))))))
    (define gxc#invoke__@
      (lambda (_keys291979292005_ . _args292007_)
        (apply gxc#invoke__%
               _keys291979292005_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys291979292005_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys291979292005_
                  'stderr-redirection:
                  absent-value))
               _args292007_)))
    (define gxc#invoke
      (lambda _args291982292013_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args291982292013_)))
    (define gxc#join!
      (lambda (_thread291973_)
        (let ((__tmp298203
               (lambda (_exn291975_)
                 (if (uncaught-exception? _exn291975_)
                     (raise (uncaught-exception-reason _exn291975_))
                     (raise _exn291975_))))
              (__tmp298202 (lambda () (thread-join! _thread291973_))))
          (declare (not safe))
          (with-catch __tmp298203 __tmp298202))))))
