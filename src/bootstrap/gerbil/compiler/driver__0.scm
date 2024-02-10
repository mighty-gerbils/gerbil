(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707565666)
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
      (lambda (_path279585_ _fun279586_)
        (with-output-to-file
         (let ((__tmp283873
                (let ()
                  (declare (not safe))
                  (cons _path279585_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp283873))
         _fun279586_)))
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
      (lambda (_gerbil-libdir279580_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir279580_)))
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
      (lambda (_dir279578_) (delete-file-or-directory _dir279578_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath279552_ _opts279553_)
        (if (let () (declare (not safe)) (string? _srcpath279552_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath279552_)))
        (let ((_outdir279555_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts279553_)))
              (_invoke-gsc?279556_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts279553_)))
              (_gsc-options279557_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts279553_)))
              (_keep-scm?279558_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts279553_)))
              (_verbosity279559_
               (let () (declare (not safe)) (pgetq 'verbose: _opts279553_)))
              (_optimize279560_
               (let () (declare (not safe)) (pgetq 'optimize: _opts279553_)))
              (_debug279561_
               (let () (declare (not safe)) (pgetq 'debug: _opts279553_)))
              (_gen-ssxi279562_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts279553_))))
          (if _outdir279555_
              (let ((__tmp283874
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir279555_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp283874))
              '#!void)
          (if _optimize279560_
              (let ((__tmp283875
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp283875))
              '#!void)
          (let ((__tmp283879
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath279552_))
                   (let ((__tmp283880
                          (let ((__tmp283881
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath279552_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp283881))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp283880))))
                (__tmp283878
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp283876
                 (let ((__tmp283877
                        (let ()
                          (declare (not safe))
                          (cons _srcpath279552_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp283877))))
            (declare (not safe))
            (call-with-parameters
             __tmp283879
             gxc#current-compile-output-dir
             _outdir279555_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?279556_
             gxc#current-compile-gsc-options
             _gsc-options279557_
             gxc#current-compile-keep-scm
             _keep-scm?279558_
             gxc#current-compile-verbose
             _verbosity279559_
             gxc#current-compile-optimize
             _optimize279560_
             gxc#current-compile-debug
             _debug279561_
             gxc#current-compile-generate-ssxi
             _gen-ssxi279562_
             gxc#current-compile-timestamp
             __tmp283878
             gxc#current-compile-context
             __tmp283876
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath279571_)
        (let ((_opts279573_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath279571_ _opts279573_))))
    (define gxc#compile-module
      (lambda _g283883_
        (let ((_g283882_ (let () (declare (not safe)) (##length _g283883_))))
          (cond ((let () (declare (not safe)) (##fx= _g283882_ 1))
                 (apply (lambda (_srcpath279571_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath279571_)))
                        _g283883_))
                ((let () (declare (not safe)) (##fx= _g283882_ 2))
                 (apply (lambda (_srcpath279575_ _opts279576_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath279575_
                             _opts279576_)))
                        _g283883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g283883_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath279528_ _opts279529_)
        (if (let () (declare (not safe)) (string? _srcpath279528_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath279528_)))
        (let ((_outdir279531_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts279529_)))
              (_invoke-gsc?279532_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts279529_)))
              (_gsc-options279533_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts279529_)))
              (_keep-scm?279534_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts279529_)))
              (_verbosity279535_
               (let () (declare (not safe)) (pgetq 'verbose: _opts279529_)))
              (_debug279536_
               (let () (declare (not safe)) (pgetq 'debug: _opts279529_))))
          (if _outdir279531_
              (let ((__tmp283884
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir279531_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp283884))
              '#!void)
          (let ((__tmp283888
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath279528_))
                   (let ((__tmp283889
                          (let ((__tmp283890
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath279528_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp283890))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp283889
                      _opts279529_))))
                (__tmp283887
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp283885
                 (let ((__tmp283886
                        (let ()
                          (declare (not safe))
                          (cons _srcpath279528_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp283886))))
            (declare (not safe))
            (call-with-parameters
             __tmp283888
             gxc#current-compile-output-dir
             _outdir279531_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?279532_
             gxc#current-compile-gsc-options
             _gsc-options279533_
             gxc#current-compile-keep-scm
             _keep-scm?279534_
             gxc#current-compile-verbose
             _verbosity279535_
             gxc#current-compile-debug
             _debug279536_
             gxc#current-compile-timestamp
             __tmp283887
             gxc#current-compile-context
             __tmp283885
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath279544_)
        (let ((_opts279546_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath279544_ _opts279546_))))
    (define gxc#compile-exe
      (lambda _g283892_
        (let ((_g283891_ (let () (declare (not safe)) (##length _g283892_))))
          (cond ((let () (declare (not safe)) (##fx= _g283891_ 1))
                 (apply (lambda (_srcpath279544_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath279544_)))
                        _g283892_))
                ((let () (declare (not safe)) (##fx= _g283891_ 2))
                 (apply (lambda (_srcpath279548_ _opts279549_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath279548_ _opts279549_)))
                        _g283892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g283892_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx279524_ _opts279525_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts279525_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx279524_
               _opts279525_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx279524_
               _opts279525_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx279407_ _opts279408_)
        (letrec ((_generate-stub279410_
                  (lambda (_builtin-modules279520_)
                    (let ((_mod-main279522_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx279407_ 'main))))
                      (write (let ((__tmp283893
                                    (let ((__tmp283894
                                           (let ((__tmp283895
                                                  (let ((__tmp283896
                                                         (let ((__tmp283898
                                                                (let ((__tmp283899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules279520_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp283899)))
                       (__tmp283897
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp283898 __tmp283897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp283896))))
                                             (declare (not safe))
                                             (cons __tmp283895 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp283894))))
                               (declare (not safe))
                               (cons 'define __tmp283893)))
                      (write (let ((__tmp283900
                                    (let ((__tmp283939
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp283901
                                           (let ((__tmp283902
                                                  (let ((__tmp283903
                                                         (let ((__tmp283927
                                                                (let ((__tmp283928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283929
                                      (let ((__tmp283937
                                             (let ((__tmp283938
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp283938)))
                                            (__tmp283930
                                             (let ((__tmp283931
                                                    (let ((__tmp283932
                                                           (let ((__tmp283933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283934
                                 (let ((__tmp283935
                                        (let ((__tmp283936
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp283936 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp283935))))
                            (declare (not safe))
                            (cons __tmp283934 '()))))
                     (declare (not safe))
                     (cons _mod-main279522_ __tmp283933))))
              (declare (not safe))
              (cons 'apply __tmp283932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283931 '()))))
                                        (declare (not safe))
                                        (cons __tmp283937 __tmp283930))))
                                 (declare (not safe))
                                 (cons '() __tmp283929))))
                          (declare (not safe))
                          (cons 'lambda __tmp283928)))
                       (__tmp283904
                        (let ((__tmp283905
                               (let ((__tmp283906
                                      (let ((__tmp283907
                                             (let ((__tmp283918
                                                    (let ((__tmp283919
                                                           (let ((__tmp283920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283921
                                 (let ((__tmp283922
                                        (let ((__tmp283923
                                               (let ((__tmp283924
                                                      (let ((__tmp283925
                                                             (let ((__tmp283926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp283926 '()))))
                (declare (not safe))
                (cons 'force-output __tmp283925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283924 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp283923))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp283922))))
                            (declare (not safe))
                            (cons __tmp283921 '()))))
                     (declare (not safe))
                     (cons 'void __tmp283920))))
              (declare (not safe))
              (cons 'with-catch __tmp283919)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp283908
                                                    (let ((__tmp283909
                                                           (let ((__tmp283910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283911
                                 (let ((__tmp283912
                                        (let ((__tmp283913
                                               (let ((__tmp283914
                                                      (let ((__tmp283915
                                                             (let ((__tmp283916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283917
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp283917 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp283916))))
                (declare (not safe))
                (cons __tmp283915 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp283914))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp283913))))
                                   (declare (not safe))
                                   (cons __tmp283912 '()))))
                            (declare (not safe))
                            (cons 'void __tmp283911))))
                     (declare (not safe))
                     (cons 'with-catch __tmp283910))))
              (declare (not safe))
              (cons __tmp283909 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283918
                                                     __tmp283908))))
                                        (declare (not safe))
                                        (cons '() __tmp283907))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp283906))))
                          (declare (not safe))
                          (cons __tmp283905 '()))))
                   (declare (not safe))
                   (cons __tmp283927 __tmp283904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp283903))))
                                             (declare (not safe))
                                             (cons __tmp283902 '()))))
                                      (declare (not safe))
                                      (cons __tmp283939 __tmp283901))))
                               (declare (not safe))
                               (cons 'define __tmp283900)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts279411_
                  (lambda (_libgerbil279518_)
                    (call-with-input-file
                     (string-append _libgerbil279518_ '".ldd")
                     read)))
                 (_replace-extension279412_
                  (lambda (_path279515_ _ext279516_)
                    (string-append
                     (path-strip-extension _path279515_)
                     _ext279516_)))
                 (_not-exclude-module?279413_
                  (lambda (_ctx279511_)
                    (let ((_id-str279513_
                           (symbol->string
                            (##structure-ref
                             _ctx279511_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp283941
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str279513_))))
                            (declare (not safe))
                            (not __tmp283941))
                          (let ((__tmp283940
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str279513_))))
                            (declare (not safe))
                            (not __tmp283940))
                          '#f))))
                 (_not-file-empty?279414_
                  (lambda (_path279509_)
                    (let ((__tmp283942
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path279509_))))
                      (declare (not safe))
                      (not __tmp283942))))
                 (_compile-stub279415_
                  (lambda (_output-scm279422_ _output-bin279423_)
                    (let* ((_gerbil-home279425_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir279427_
                            (path-expand '"lib" _gerbil-home279425_))
                           (_gerbil-staticdir279429_
                            (path-expand '"static" _gerbil-libdir279427_))
                           (_gxlink279431_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir279427_))
                           (_tmp279433_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path279437_
                            (lambda (_f279435_)
                              (path-expand
                               (path-strip-directory _f279435_)
                               _tmp279433_)))
                           (_deps279439_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx279407_)))
                           (_deps279441_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?279413_
                                      _deps279439_)))
                           (_src-deps-scm279443_
                            (map gxc#find-static-module-file _deps279441_))
                           (_src-deps-scm279445_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?279414_
                                      _src-deps-scm279443_)))
                           (_src-deps-scm279447_
                            (map path-expand _src-deps-scm279445_))
                           (_deps-scm279449_
                            (map _tmp-path279437_ _src-deps-scm279447_))
                           (_deps-c279455_
                            (map (lambda (_g279450279452_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension279412_
                                      _g279450279452_
                                      '".c")))
                                 _deps-scm279449_))
                           (_deps-o279461_
                            (map (lambda (_g279456279458_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension279412_
                                      _g279456279458_
                                      '".o")))
                                 _deps-scm279449_))
                           (_src-bin-scm279463_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx279407_)))
                           (_src-bin-scm279465_
                            (path-expand _src-bin-scm279463_))
                           (_bin-scm279467_
                            (let ()
                              (declare (not safe))
                              (_tmp-path279437_ _src-bin-scm279465_)))
                           (_bin-c279469_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279412_
                               _bin-scm279467_
                               '".c")))
                           (_bin-o279471_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279412_
                               _bin-scm279467_
                               '".o")))
                           (_output-bin279473_
                            (path-expand _output-bin279423_))
                           (_output-scm279475_
                            (path-expand _output-scm279422_))
                           (_output-c279477_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279412_
                               _output-scm279475_
                               '".c")))
                           (_output-o279479_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279412_
                               _output-scm279475_
                               '".o")))
                           (_output_-c279481_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279412_
                               _output-scm279475_
                               '"_.c")))
                           (_output_-o279483_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279412_
                               _output-scm279475_
                               '"_.o")))
                           (_gsc-link-opts279485_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts279487_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts279489_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir279429_)))
                           (_output-ld-opts279491_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a279493_
                            (path-expand '"libgerbil.a" _gerbil-libdir279427_))
                           (_libgerbil.so279495_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir279427_))
                           (_libgerbil-ld-opts279497_
                            (if (file-exists? _libgerbil.so279495_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts279411_
                                   _libgerbil.so279495_))
                                (if (file-exists? _libgerbil.a279493_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts279411_
                                       _libgerbil.a279493_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a279493_
                                       _libgerbil.so279495_)))))
                           (_rpath279499_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir279427_)))
                           (_builtin-modules279503_
                            (map (lambda (_mod279501_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod279501_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx279407_ _deps279441_)))))
                      (let ((__tmp283943
                             (lambda ()
                               (let ((__tmp283944
                                      (path-directory _output-bin279473_)))
                                 (declare (not safe))
                                 (create-directory* __tmp283944)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp283943))
                      (let ((__tmp283945
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub279410_
                                  _builtin-modules279503_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm279475_
                         __tmp283945))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp283946
                                   (lambda () (create-directory _tmp279433_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp283946))
                            (for-each
                             copy-file
                             _src-deps-scm279447_
                             _deps-scm279449_)
                            (copy-file _src-bin-scm279465_ _bin-scm279467_)
                            (let ((__tmp283954
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp283947
                                   (let ((__tmp283948
                                          (let ((__tmp283949
                                                 (let ((__tmp283950
                                                        (let ((__tmp283951
                                                               (let ((__tmp283952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283953
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm279475_ '()))))
                                (declare (not safe))
                                (cons _bin-scm279467_ __tmp283953))))
                         (declare (not safe))
                         (foldr1 cons __tmp283952 _deps-scm279449_))))
                  (declare (not safe))
                  (foldr1 cons __tmp283951 _gsc-link-opts279485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink279431_
                                                         __tmp283950))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp283949))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp283948))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp283954
                               __tmp283947))
                            (let ((__tmp283962
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp283955
                                   (let ((__tmp283956
                                          (let ((__tmp283957
                                                 (let ((__tmp283958
                                                        (let ((__tmp283959
                                                               (let ((__tmp283960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283961
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c279481_ '()))))
                                (declare (not safe))
                                (cons _output-c279477_ __tmp283961))))
                         (declare (not safe))
                         (cons _bin-c279469_ __tmp283960))))
                  (declare (not safe))
                  (foldr1 cons __tmp283959 _deps-c279455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp283958
                                                           _gsc-static-opts279489_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp283957
                                                    _gsc-cc-opts279487_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp283956))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp283962
                               __tmp283955))
                            (let ((__tmp283975
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp283963
                                   (let ((__tmp283964
                                          (let ((__tmp283965
                                                 (let ((__tmp283966
                                                        (let ((__tmp283967
                                                               (let ((__tmp283968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283969
                                     (let ((__tmp283970
                                            (let ((__tmp283971
                                                   (let ((__tmp283972
                                                          (let ((__tmp283973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp283974
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts279497_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp283974))))
                    (declare (not safe))
                    (cons _gerbil-libdir279427_ __tmp283973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp283972))))
                                              (declare (not safe))
                                              (cons _rpath279499_
                                                    __tmp283971))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp283970
                                               _output-ld-opts279491_))))
                                (declare (not safe))
                                (cons _output_-o279483_ __tmp283969))))
                         (declare (not safe))
                         (cons _output-o279479_ __tmp283968))))
                  (declare (not safe))
                  (cons _bin-o279471_ __tmp283967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp283966
                                                           _deps-o279461_))))
                                            (declare (not safe))
                                            (cons _output-bin279473_
                                                  __tmp283965))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp283964))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp283975
                               __tmp283963))
                            (for-each
                             delete-file
                             (let ((__tmp283976
                                    (let ((__tmp283977
                                           (let ((__tmp283978
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o279483_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o279479_
                                                   __tmp283978))))
                                      (declare (not safe))
                                      (cons _output_-c279481_ __tmp283977))))
                               (declare (not safe))
                               (cons _output-c279477_ __tmp283976)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp279433_)))
                          '#!void)))))
          (let* ((_output-bin279417_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx279407_ _opts279408_)))
                 (_output-scm279419_
                  (string-append _output-bin279417_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub279415_ _output-scm279419_ _output-bin279417_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm279419_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx279232_ _opts279233_)
        (letrec ((_reset-declare279235_
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
                 (_generate-stub279236_
                  (lambda (_deps279398_)
                    (let ((_mod-main279400_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx279232_ 'main)))
                          (_reset-decl279401_
                           (let ()
                             (declare (not safe))
                             (_reset-declare279235_)))
                          (_user-decl279402_
                           (let ()
                             (declare (not safe))
                             (_user-declare279237_))))
                      (for-each
                       (lambda (_dep279404_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl279401_)
                         (newline)
                         (if _user-decl279402_
                             (begin (write _user-decl279402_) (newline))
                             '#!void)
                         (write (let ((__tmp283979
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep279404_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp283979)))
                         (newline))
                       _deps279398_)
                      (write (let ((__tmp283980
                                    (let ((__tmp283993
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp283981
                                           (let ((__tmp283989
                                                  (let ((__tmp283990
                                                         (let ((__tmp283991
                                                                (let ((__tmp283992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp283992))))
                   (declare (not safe))
                   (cons __tmp283991 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp283990)))
                                                 (__tmp283982
                                                  (let ((__tmp283983
                                                         (let ((__tmp283984
                                                                (let ((__tmp283985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283986
                                      (let ((__tmp283987
                                             (let ((__tmp283988
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp283988 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp283987))))
                                 (declare (not safe))
                                 (cons __tmp283986 '()))))
                          (declare (not safe))
                          (cons _mod-main279400_ __tmp283985))))
                   (declare (not safe))
                   (cons 'apply __tmp283984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp283983 '()))))
                                             (declare (not safe))
                                             (cons __tmp283989 __tmp283982))))
                                      (declare (not safe))
                                      (cons __tmp283993 __tmp283981))))
                               (declare (not safe))
                               (cons 'define __tmp283980)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare279237_
                  (lambda ()
                    (let* ((_gsc-opts279303_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts279233_)))
                           (_gsc-prelude279305_
                            (if _gsc-opts279303_
                                (member '"-prelude" _gsc-opts279303_)
                                '#f))
                           (_gsc-prelude279307_
                            (if _gsc-prelude279305_
                                (read (open-input-string
                                       (cadr _gsc-prelude279305_)))
                                '#f)))
                      (let _lp279310_ ((_rest279312_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude279307_ '())))
                                       (_user-decls279313_ '()))
                        (let* ((_rest279314279322_ _rest279312_)
                               (_else279316279330_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls279313_))
                                      '#f
                                      (let ((__tmp283994
                                             (reverse _user-decls279313_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp283994)))))
                               (_K279318279386_
                                (lambda (_rest279333_ _expr279334_)
                                  (let* ((_expr279335279347_ _expr279334_)
                                         (_else279338279355_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp279310_
                                               _rest279333_
                                               _user-decls279313_)))))
                                    (let ((_K279343279376_
                                           (lambda (_decls279374_)
                                             (let ((__tmp283995
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls279313_
                                                              _decls279374_))))
                                               (declare (not safe))
                                               (_lp279310_
                                                _rest279333_
                                                __tmp283995))))
                                          (_K279340279361_
                                           (lambda (_exprs279359_)
                                             (let ((__tmp283996
                                                    (append _exprs279359_
                                                            _rest279333_)))
                                               (declare (not safe))
                                               (_lp279310_
                                                __tmp283996
                                                _user-decls279313_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr279335279347_))
                                          (let ((_tl279345279381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr279335279347_)))
                                                (_hd279344279379_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr279335279347_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd279344279379_
                                                         'declare))
                                                (let ((_decls279384_
                                                       _tl279345279381_))
                                                  (declare (not safe))
                                                  (_K279343279376_
                                                   _decls279384_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd279344279379_
                                                             'begin))
                                                    (let ((_exprs279369_
                                                           _tl279345279381_))
                                                      (declare (not safe))
                                                      (_K279340279361_
                                                       _exprs279369_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else279338279355_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else279338279355_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest279314279322_))
                              (let ((_hd279319279389_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest279314279322_)))
                                    (_tl279320279391_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest279314279322_))))
                                (let* ((_expr279394_ _hd279319279389_)
                                       (_rest279396_ _tl279320279391_))
                                  (declare (not safe))
                                  (_K279318279386_ _rest279396_ _expr279394_)))
                              (let ()
                                (declare (not safe))
                                (_else279316279330_))))))))
                 (_compile-stub279238_
                  (lambda (_output-scm279245_ _output-bin279246_)
                    (let* ((_gerbil-home279248_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir279250_
                            (path-expand '"lib" _gerbil-home279248_))
                           (_runtime279252_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp279254_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home279248_))
                           (_include-gambit-sharp279256_
                            (string-append
                             '"(include \""
                             _gambit-sharp279254_
                             '"\")"))
                           (_bin-scm279258_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx279232_)))
                           (_deps279260_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx279232_)))
                           (_deps279262_
                            (map gxc#find-static-module-file _deps279260_))
                           (_deps279267_
                            (let ((__tmp283997
                                   (lambda (_$obj279264_)
                                     (let ((__tmp283998
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj279264_))))
                                       (declare (not safe))
                                       (not __tmp283998)))))
                              (declare (not safe))
                              (filter __tmp283997 _deps279262_)))
                           (_deps279271_
                            (let ((__tmp283999
                                   (lambda (_f279269_)
                                     (let ((__tmp284000
                                            (member _f279269_
                                                    _runtime279252_)))
                                       (declare (not safe))
                                       (not __tmp284000)))))
                              (declare (not safe))
                              (filter __tmp283999 _deps279267_)))
                           (_output-base279273_
                            (string-append
                             (path-strip-extension _output-scm279245_)))
                           (_output-c279275_
                            (string-append _output-base279273_ '".c"))
                           (_output-o279277_
                            (string-append _output-base279273_ '".o"))
                           (_output-c_279279_
                            (string-append _output-base279273_ '"_.c"))
                           (_output-o_279281_
                            (string-append _output-base279273_ '"_.o"))
                           (_gsc-link-opts279283_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts279285_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts279287_
                            (let ((__tmp284001
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir279250_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp284001)))
                           (_output-ld-opts279289_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros279291_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp284003
                                       (let ((__tmp284004
                                              (let ((__tmp284005
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp279256_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp284005))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp284004))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp284003))
                                (let ((__tmp284002
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp279256_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp284002))))
                           (_gsc-link-opts279293_
                            (append _gsc-link-opts279283_
                                    _gsc-gx-macros279291_))
                           (_rpath279295_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir279250_)))
                           (_default-ld-options279297_
                            (let ((__tmp284006
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp284006))))
                      (let ((__tmp284007
                             (lambda ()
                               (let ((__tmp284008
                                      (path-directory _output-bin279246_)))
                                 (declare (not safe))
                                 (create-directory* __tmp284008)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp284007))
                      (let ((__tmp284009
                             (lambda ()
                               (let ((__tmp284010
                                      (let ((__tmp284011
                                             (let ((__tmp284012
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm279258_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp284012
                                                       _deps279271_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp284011
                                                _runtime279252_))))
                                 (declare (not safe))
                                 (_generate-stub279236_ __tmp284010)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm279245_
                         __tmp284009))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp284018
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp284013
                                   (let ((__tmp284014
                                          (let ((__tmp284015
                                                 (let ((__tmp284016
                                                        (let ((__tmp284017
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm279245_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp284017 _gsc-link-opts279293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_279279_
                                                         __tmp284016))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp284015))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp284014))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284018
                               __tmp284013))
                            (let ((__tmp284024
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp284019
                                   (let ((__tmp284020
                                          (let ((__tmp284021
                                                 (let ((__tmp284022
                                                        (let ((__tmp284023
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_279279_ '()))))
                  (declare (not safe))
                  (cons _output-c279275_ __tmp284023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp284022
                                                           _gsc-static-opts279287_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp284021
                                                    _gsc-cc-opts279285_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp284020))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284024
                               __tmp284019))
                            (let ((__tmp284034
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp284025
                                   (let ((__tmp284026
                                          (let ((__tmp284027
                                                 (let ((__tmp284028
                                                        (let ((__tmp284029
                                                               (let ((__tmp284030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284031
                                     (let ((__tmp284032
                                            (let ((__tmp284033
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options279297_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir279250_
                                                    __tmp284033))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp284032))))
                                (declare (not safe))
                                (cons _rpath279295_ __tmp284031))))
                         (declare (not safe))
                         (foldr1 cons __tmp284030 _output-ld-opts279289_))))
                  (declare (not safe))
                  (cons _output-o_279281_ __tmp284029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o279277_
                                                         __tmp284028))))
                                            (declare (not safe))
                                            (cons _output-bin279246_
                                                  __tmp284027))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp284026))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284034
                               __tmp284025)))
                          '#!void)))))
          (let* ((_output-bin279240_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx279232_ _opts279233_)))
                 (_output-scm279242_
                  (string-append _output-bin279240_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub279238_ _output-scm279242_ _output-bin279240_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm279242_))))))
    (define gxc#find-export-binding
      (lambda (_ctx279182_ _id279183_)
        (let ((_$e279229_
               (let ((__tmp284036
                      (lambda (_e279184279186_)
                        (let* ((_g279188279198_ _e279184279186_)
                               (_else279190279206_ (lambda () '#f))
                               (_K279192279210_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g279188279198_
                                 'gx#module-export::t))
                              (let* ((_e279193279213_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g279188279198_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e279194279216_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g279188279198_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e279195279219_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g279188279198_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e279195279219_ '0))
                                    (let ((_e279196279222_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g279188279198_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g279224279226_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g279224279226_
                                                    _id279183_)))
                                           _e279196279222_)
                                          (let ()
                                            (declare (not safe))
                                            (_K279192279210_))
                                          (let ()
                                            (declare (not safe))
                                            (_else279190279206_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else279190279206_))))
                              (let ()
                                (declare (not safe))
                                (_else279190279206_))))))
                     (__tmp284035
                      (##structure-ref
                       _ctx279182_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp284036 __tmp284035))))
          (if _$e279229_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e279229_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx279174_ _id279175_)
        (let ((_$e279177_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx279174_ _id279175_))))
          (if _$e279177_
              ((lambda (_bind279180_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind279180_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id279175_)))
                 (##structure-ref _bind279180_ '1 gx#binding::t '#f))
               _$e279177_)
              (let ((__tmp284037
                     (##structure-ref
                      _ctx279174_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp284037
                 _id279175_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx279061_)
        (letrec* ((_ht279063_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template279064_
                   (lambda (_in279126_ _phi279127_)
                     (let ((_iphi279129_
                            (fx+ _phi279127_
                                 (##direct-structure-ref
                                  _in279126_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports279130_
                            (##structure-ref
                             (##direct-structure-ref
                              _in279126_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp279132_ ((_rest279134_ _imports279130_)
                                        (_r279135_ '()))
                         (let* ((_rest279136279144_ _rest279134_)
                                (_else279138279152_ (lambda () _r279135_))
                                (_K279140279162_
                                 (lambda (_rest279155_ _in279156_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in279156_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi279129_))
                                           (let ((__tmp284044
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in279156_
                                                          _r279135_))))
                                             (declare (not safe))
                                             (_lp279132_
                                              _rest279155_
                                              __tmp284044))
                                           (let ()
                                             (declare (not safe))
                                             (_lp279132_
                                              _rest279155_
                                              _r279135_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in279156_
                                              'gx#module-import::t))
                                           (let ((_iphi279158_
                                                  (fx+ _phi279127_
                                                       (##direct-structure-ref
                                                        _in279156_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi279158_))
                                                 (let ((__tmp284042
                                                        (let ((__tmp284043
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in279156_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp284043 _r279135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp279132_
                                                    _rest279155_
                                                    __tmp284042))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp279132_
                                                    _rest279155_
                                                    _r279135_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in279156_
                                                  'gx#import-set::t))
                                               (let ((_xphi279160_
                                                      (fx+ _iphi279129_
                                                           (##direct-structure-ref
                                                            _in279156_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi279160_))
                                                     (let ((__tmp284040
                                                            (let ((__tmp284041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in279156_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp284041 _r279135_))))
               (declare (not safe))
               (_lp279132_ _rest279155_ __tmp284040))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi279160_)
                                                         (let ((__tmp284038
                                                                (let ((__tmp284039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template279064_
                                  _in279156_
                                  _iphi279129_))))
                          (declare (not safe))
                          (foldl1 cons _r279135_ __tmp284039))))
                   (declare (not safe))
                   (_lp279132_ _rest279155_ __tmp284038))
                 (let ()
                   (declare (not safe))
                   (_lp279132_ _rest279155_ _r279135_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp279132_
                                                  _rest279155_
                                                  _r279135_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest279136279144_))
                               (let ((_hd279141279165_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest279136279144_)))
                                     (_tl279142279167_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest279136279144_))))
                                 (let* ((_in279170_ _hd279141279165_)
                                        (_rest279172_ _tl279142279167_))
                                   (declare (not safe))
                                   (_K279140279162_ _rest279172_ _in279170_)))
                               (let ()
                                 (declare (not safe))
                                 (_else279138279152_))))))))
                  (_find-deps279065_
                   (lambda (_rest279072_ _deps279073_)
                     (let* ((_rest279074279082_ _rest279072_)
                            (_else279076279090_ (lambda () _deps279073_))
                            (_K279078279114_
                             (lambda (_rest279093_ _hd279094_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd279094_
                                      'gx#module-context::t))
                                   (let ((_id279096_
                                          (##structure-ref
                                           _hd279094_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports279097_
                                          (##structure-ref
                                           _hd279094_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht279063_
                                            _id279096_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps279065_
                                            _rest279093_
                                            _deps279073_))
                                         (let ((_$e279099_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd279094_))))
                                           (if _$e279099_
                                               ((lambda (_pre279102_)
                                                  (let ((_xdeps279104_
                                                         (let ((__tmp284057
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre279102_ _imports279097_))))
                   (declare (not safe))
                   (_find-deps279065_ __tmp284057 _deps279073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht279063_
                                                       _id279096_
                                                       _hd279094_))
                                                    (let ((__tmp284058
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd279094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps279104_))))
              (declare (not safe))
              (_find-deps279065_ _rest279093_ __tmp284058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e279099_)
                                               (let ((_xdeps279106_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps279065_
                                                         _imports279097_
                                                         _deps279073_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht279063_
                                                    _id279096_
                                                    _hd279094_))
                                                 (let ((__tmp284056
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd279094_
                                                                _xdeps279106_))))
                                                   (declare (not safe))
                                                   (_find-deps279065_
                                                    _rest279093_
                                                    __tmp284056)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd279094_
                                          'gx#prelude-context::t))
                                       (let ((_id279108_
                                              (##structure-ref
                                               _hd279094_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht279063_
                                                _id279108_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps279065_
                                                _rest279093_
                                                _deps279073_))
                                             (let ((_xdeps279110_
                                                    (let ((__tmp284054
                                                           (##structure-ref
                                                            _hd279094_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps279065_
                                                       __tmp284054
                                                       _deps279073_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht279063_
                                                      _id279108_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps279065_
                                                      _rest279093_
                                                      _xdeps279110_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht279063_
                                                        _id279108_
                                                        _hd279094_))
                                                     (let ((__tmp284055
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd279094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps279110_))))
               (declare (not safe))
               (_find-deps279065_ _rest279093_ __tmp284055)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd279094_
                                              'gx#module-import::t))
                                           (if (let ((__tmp284053
                                                      (##direct-structure-ref
                                                       _hd279094_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp284053))
                                               (let ((__tmp284051
                                                      (let ((__tmp284052
                                                             (##direct-structure-ref
                                                              _hd279094_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp284052
                                                              _rest279093_))))
                                                 (declare (not safe))
                                                 (_find-deps279065_
                                                  __tmp284051
                                                  _deps279073_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps279065_
                                                  _rest279093_
                                                  _deps279073_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd279094_
                                                  'gx#module-export::t))
                                               (let ((__tmp284049
                                                      (let ((__tmp284050
                                                             (##direct-structure-ref
                                                              _hd279094_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp284050
                                                              _rest279093_))))
                                                 (declare (not safe))
                                                 (_find-deps279065_
                                                  __tmp284049
                                                  _deps279073_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd279094_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp284048
                                                              (##direct-structure-ref
                                                               _hd279094_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp284048))
                                                       (let ((__tmp284046
                                                              (let ((__tmp284047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd279094_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp284047 _rest279093_))))
                 (declare (not safe))
                 (_find-deps279065_ __tmp284046 _deps279073_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd279094_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps279112_
                           (let ()
                             (declare (not safe))
                             (_import-set-template279064_ _hd279094_ '0)))
                          (__tmp284045
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest279093_ _xdeps279112_))))
                     (declare (not safe))
                     (_find-deps279065_ __tmp284045 _deps279073_))
                   (let ()
                     (declare (not safe))
                     (_find-deps279065_ _rest279093_ _deps279073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd279094_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest279074279082_))
                           (let ((_hd279079279117_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest279074279082_)))
                                 (_tl279080279119_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest279074279082_))))
                             (let* ((_hd279122_ _hd279079279117_)
                                    (_rest279124_ _tl279080279119_))
                               (declare (not safe))
                               (_K279078279114_ _rest279124_ _hd279122_)))
                           (let ()
                             (declare (not safe))
                             (_else279076279090_)))))))
          (reverse (let ((__tmp284059
                          (let ((__tmp284060
                                 (let ((_$e279067_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx279061_))))
                                   (if _$e279067_
                                       ((lambda (_pre279070_)
                                          (let ((__tmp284061
                                                 (##structure-ref
                                                  _ctx279061_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre279070_ __tmp284061)))
                                        _$e279067_)
                                       (##structure-ref
                                        _ctx279061_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps279065_ __tmp284060 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp284059))))))
    (define gxc#find-static-module-file
      (lambda (_ctx278992_)
        (let* ((_context-id278994_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx278992_
                       'gx#module-context::t))
                    (##structure-ref _ctx278992_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx278992_)))
               (_scm278996_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id278994_))
                 '".scm"))
               (_dirs278998_ (gx#current-expander-module-library-path))
               (_dirs279004_
                (let ((_user-libpath279000_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath279000_
                      (let ((_user-libpath279002_
                             (path-expand '"lib" _user-libpath279000_)))
                        (if (member _user-libpath279002_ _dirs278998_)
                            _dirs278998_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath279002_ _dirs278998_))))
                      _dirs278998_)))
               (_dirs279013_
                (let ((_$e279006_ (gxc#current-compile-output-dir)))
                  (if _$e279006_
                      ((lambda (_g279008279010_)
                         (let ()
                           (declare (not safe))
                           (cons _g279008279010_ _dirs279004_)))
                       _$e279006_)
                      _dirs279004_)))
               (_dirs279019_
                (map (lambda (_g279014279016_)
                       (path-expand '"static" _g279014279016_))
                     _dirs279013_)))
          (let _lp279022_ ((_rest279024_ _dirs279019_))
            (let* ((_rest279025279033_ _rest279024_)
                   (_else279027279041_
                    (lambda ()
                      (let ((__tmp284062
                             (##structure-ref
                              _ctx278992_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp284062
                         _scm278996_))))
                   (_K279029279049_
                    (lambda (_rest279044_ _dir279045_)
                      (let ((_path279047_
                             (path-expand _scm278996_ _dir279045_)))
                        (if (file-exists? _path279047_)
                            _path279047_
                            (let ()
                              (declare (not safe))
                              (_lp279022_ _rest279044_)))))))
              (if (let () (declare (not safe)) (##pair? _rest279025279033_))
                  (let ((_hd279030279052_
                         (let ()
                           (declare (not safe))
                           (##car _rest279025279033_)))
                        (_tl279031279054_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest279025279033_))))
                    (let* ((_dir279057_ _hd279030279052_)
                           (_rest279059_ _tl279031279054_))
                      (declare (not safe))
                      (_K279029279049_ _rest279059_ _dir279057_)))
                  (let () (declare (not safe)) (_else279027279041_))))))))
    (define gxc#file-empty?
      (lambda (_path278990_)
        (let ((__tmp284063 (file-info-size (file-info _path278990_ '#t))))
          (declare (not safe))
          (zero? __tmp284063))))
    (define gxc#compile-top-module
      (lambda (_ctx278979_)
        (let ((__tmp284067
               (lambda ()
                 (let ((__tmp284068
                        (##structure-ref
                         _ctx278979_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp284068))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp284069
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx278979_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp284069))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx278979_))
                 (if (let ((__tmp284072
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx278979_))))
                       (declare (not safe))
                       (null? __tmp284072))
                     (let* ((_thr1278984_
                             (let ((__tmp284070
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx278979_)))))
                               (declare (not safe))
                               (spawn __tmp284070)))
                            (_thr2278987_
                             (let ((__tmp284071
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx278979_)))))
                               (declare (not safe))
                               (spawn __tmp284071))))
                       (let () (declare (not safe)) (gxc#join! _thr1278984_))
                       (let () (declare (not safe)) (gxc#join! _thr2278987_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx278979_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx278979_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx278979_))
                     '#!void)))
              (__tmp284066
               (let ((__obj283871 (make-object gxc#symbol-table::t '3)))
                 (gxc#symbol-table:::init! __obj283871)
                 __obj283871))
              (__tmp284065
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp284064 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp284067
           gx#current-expander-context
           _ctx278979_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp284066
           gxc#current-compile-runtime-sections
           __tmp284065
           gxc#current-compile-runtime-names
           __tmp284064))))
    (define gxc#collect-bindings
      (lambda (_ctx278977_)
        (let ((__tmp284073
               (##structure-ref _ctx278977_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp284073))))
    (define gxc#compile-runtime-code
      (lambda (_ctx278923_)
        (letrec ((_compile1278925_
                  (lambda (_ctx278966_)
                    (let* ((_code278968_
                            (##structure-ref
                             _ctx278966_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt278972_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code278968_))
                                (let ((_idstr278970_
                                       (let ((__tmp284074
                                              (##structure-ref
                                               _ctx278966_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp284074))))
                                  (string-append _idstr278970_ '"__0"))
                                '#f)))
                      (if _rt278972_
                          (begin
                            (let ((__tmp284075
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp284075 _ctx278966_ _rt278972_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code278927_
                               _ctx278966_
                               _code278968_)))
                          (let ((_path278975_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx278966_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path278975_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code278928_
                         _ctx278966_
                         _code278968_
                         _rt278972_)))))
                 (_context-timestamp278926_
                  (lambda (_ctx278964_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx278964_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code278927_
                  (lambda (_ctx278946_ _code278947_)
                    (let* ((_lifts278949_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code278952_
                            (let ((__tmp284078
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code278947_))))
                                  (__tmp284077
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp284076
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp284078
                               gx#current-expander-context
                               _ctx278946_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts278949_
                               gxc#current-compile-marks
                               __tmp284077
                               gxc#current-compile-identifiers
                               __tmp284076)))
                           (_runtime-code278954_
                            (if (let ((__tmp284082 (unbox _lifts278949_)))
                                  (declare (not safe))
                                  (null? __tmp284082))
                                _runtime-code278952_
                                (let ((__tmp284079
                                       (let ((__tmp284081
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code278952_
                                                      '())))
                                             (__tmp284080
                                              (reverse (unbox _lifts278949_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp284081
                                                 __tmp284080))))
                                  (declare (not safe))
                                  (cons 'begin __tmp284079))))
                           (_runtime-code278956_
                            (let ((__tmp284083
                                   (let ((__tmp284085
                                          (let ((__tmp284086
                                                 (let ((__tmp284089
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp278926_
                                                           _ctx278946_)))
                                                       (__tmp284087
                                                        (let ((__tmp284088
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp284088
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp284089
                                                         __tmp284087))))
                                            (declare (not safe))
                                            (cons 'define __tmp284086)))
                                         (__tmp284084
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code278954_ '()))))
                                     (declare (not safe))
                                     (cons __tmp284085 __tmp284084))))
                              (declare (not safe))
                              (cons 'begin __tmp284083)))
                           (_scm0278958_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx278946_
                               '0
                               '".scm"))))
                      (let ((_scms278961_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx278946_))))
                        (let ((__tmp284090
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0278958_
                                    _runtime-code278956_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp284090
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms278961_)
                            (delete-file _scms278961_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0278958_
                           '" => "
                           _scms278961_))
                        (copy-file _scm0278958_ _scms278961_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0278958_))))))
                 (_generate-loader-code278928_
                  (lambda (_ctx278935_ _code278936_ _rt278937_)
                    (let* ((_loader-code278940_
                            (let ((__tmp284091
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code278936_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp284091
                               gx#current-expander-context
                               _ctx278935_)))
                           (_loader-code278942_
                            (if _rt278937_
                                (let ((__tmp284092
                                       (let ((__tmp284093
                                              (let ((__tmp284094
                                                     (let ((__tmp284095
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt278937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp284095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp284094 '()))))
                                         (declare (not safe))
                                         (cons _loader-code278940_
                                               __tmp284093))))
                                  (declare (not safe))
                                  (cons 'begin __tmp284092))
                                _loader-code278940_)))
                      (let ((__tmp284096
                             (lambda ()
                               (let ((__tmp284097
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx278935_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp284097
                                  _loader-code278942_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp284096
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules278930_
                 (let ((__tmp284098
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx278923_))))
                   (declare (not safe))
                   (cons _ctx278923_ __tmp284098))))
            (for-each
             (lambda (_ctx278932_)
               (let ((__tmp284099
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1278925_ _ctx278932_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp284099
                  gxc#current-compile-decls
                  '())))
             _all-modules278930_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx278820_)
        (letrec ((_compile-ssi278822_
                  (lambda (_code278893_)
                    (let* ((_path278895_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx278820_
                               '#f
                               '".ssi")))
                           (_prelude278906_
                            (let* ((_super278897_
                                    (##structure-ref
                                     _ctx278820_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e278899_
                                    (##structure-ref
                                     _super278897_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e278899_
                                  ((lambda (_g278901278903_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g278901278903_)))
                                   _$e278899_)
                                  ':<root>)))
                           (_ns278908_
                            (##structure-ref
                             _ctx278820_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr278910_
                            (symbol->string
                             (##structure-ref
                              _ctx278820_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg278917_
                            (let ((_$e278912_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr278910_ '#\/))))
                              (if _$e278912_
                                  ((lambda (_x278915_)
                                     (string->symbol
                                      (substring _idstr278910_ '0 _x278915_)))
                                   _$e278912_)
                                  '#f)))
                           (_rt278919_
                            (let ((__tmp284100
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp284100 _ctx278820_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path278895_))
                      (let ((__tmp284101
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude278906_))
                               (if _pkg278917_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg278917_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns278908_))
                               (newline)
                               (pretty-print _code278893_)
                               (if _rt278919_
                                   (pretty-print
                                    (let ((__tmp284102
                                           (let ((__tmp284106
                                                  (let ((__tmp284107
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp284107)))
                                                 (__tmp284103
                                                  (let ((__tmp284104
                                                         (let ((__tmp284105
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt278919_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp284105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284104 '()))))
                                             (declare (not safe))
                                             (cons __tmp284106 __tmp284103))))
                                      (declare (not safe))
                                      (cons '%#call __tmp284102)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path278895_
                         __tmp284101)))))
                 (_compile-phi278823_
                  (lambda (_part278833_)
                    (let* ((_part278834278847_ _part278833_)
                           (_E278836278851_
                            (lambda ()
                              (error '"No clause matching"
                                     _part278834278847_)))
                           (_K278837278862_
                            (lambda (_code278854_
                                     _n278855_
                                     _phi278856_
                                     _phi-ctx278857_)
                              (let* ((_code278860_
                                      (let ((__tmp284108
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code278854_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp284108
                                         gx#current-expander-context
                                         _phi-ctx278857_
                                         gx#current-expander-phi
                                         _phi278856_)))
                                     (__tmp284109
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx278820_
                                         _n278855_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp284109
                                 _code278860_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part278834278847_))
                          (let ((_hd278838278865_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part278834278847_)))
                                (_tl278839278867_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part278834278847_))))
                            (let ((_phi-ctx278870_ _hd278838278865_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl278839278867_))
                                  (let ((_hd278840278872_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl278839278867_)))
                                        (_tl278841278874_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl278839278867_))))
                                    (let ((_phi278877_ _hd278840278872_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl278841278874_))
                                          (let ((_hd278842278879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl278841278874_)))
                                                (_tl278843278881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl278841278874_))))
                                            (let ((_n278884_ _hd278842278879_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl278843278881_))
                                                  (let ((_hd278844278886_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl278843278881_)))
                                                        (_tl278845278888_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl278843278881_))))
                                                    (let ((_code278891_
                                                           _hd278844278886_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl278845278888_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K278837278862_
                                                             _code278891_
                                                             _n278884_
                                                             _phi278877_
                                                             _phi-ctx278870_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E278836278851_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E278836278851_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E278836278851_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E278836278851_)))))
                          (let () (declare (not safe)) (_E278836278851_)))))))
          (let ((_g284110_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx278820_))))
            (begin
              (let ((_g284111_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g284110_)
                           (##vector-length _g284110_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g284111_ 2)))
                    (error "Context expects 2 values" _g284111_)))
              (let ((_ssi-code278825_
                     (let () (declare (not safe)) (##vector-ref _g284110_ 0)))
                    (_phi-code278826_
                     (let () (declare (not safe)) (##vector-ref _g284110_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi278822_ _ssi-code278825_))
                  (let ((_threads278831_
                         (map (lambda (_code278828_)
                                (let ((__tmp284112
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi278823_
                                            _code278828_)))))
                                  (declare (not safe))
                                  (spawn __tmp284112)))
                              _phi-code278826_)))
                    (for-each gxc#join! _threads278831_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx278803_)
        (let* ((_path278805_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx278803_ '#f '".ssxi.ss")))
               (_code278807_
                (let ((__tmp284113
                       (##structure-ref
                        _ctx278803_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp284113)))
               (_idstr278809_
                (symbol->string
                 (##structure-ref _ctx278803_ '1 gx#expander-context::t '#f)))
               (_pkg278816_
                (let ((_$e278811_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr278809_ '#\/))))
                  (if _$e278811_
                      ((lambda (_x278814_)
                         (string->symbol
                          (substring _idstr278809_ '0 _x278814_)))
                       _$e278811_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path278805_))
          (let ((__tmp284114
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg278816_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg278816_))
                       '#!void)
                   (newline)
                   (pretty-print _code278807_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path278805_ __tmp284114)))))
    (define gxc#generate-meta-code
      (lambda (_ctx278796_)
        (let* ((_state278798_
                (let ((__obj283872 (make-object gxc#meta-state::t '5)))
                  (gxc#meta-state:::init! __obj283872 _ctx278796_)
                  __obj283872))
               (_ssi-code278800_
                (let ((__tmp284115
                       (##structure-ref
                        _ctx278796_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp284115 _state278798_))))
          (values _ssi-code278800_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state278798_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx278789_)
        (let ((_lifts278791_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp284118
                 (lambda ()
                   (let ((_code278794_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx278789_))))
                     (if (let ((__tmp284122 (unbox _lifts278791_)))
                           (declare (not safe))
                           (null? __tmp284122))
                         _code278794_
                         (let ((__tmp284119
                                (let ((__tmp284121
                                       (let ()
                                         (declare (not safe))
                                         (cons _code278794_ '())))
                                      (__tmp284120
                                       (reverse (unbox _lifts278791_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp284121 __tmp284120))))
                           (declare (not safe))
                           (cons 'begin __tmp284119))))))
                (__tmp284117
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp284116
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp284118
             gxc#current-compile-lift
             _lifts278791_
             gxc#current-compile-marks
             __tmp284117
             gxc#current-compile-identifiers
             __tmp284116)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx278785_)
        (let ((_modules278787_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp284123
                 (##structure-ref _ctx278785_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp284123 _modules278787_))
          (reverse (unbox _modules278787_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path278768_ _code278769_ _phi?278770_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path278768_))
        (let ((__tmp284124
               (lambda ()
                 (pretty-print
                  (let ((__tmp284125
                         (let ((__tmp284132
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp284126
                                (let ((__tmp284131
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp284127
                                       (let ((__tmp284130
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp284128
                                              (let ((__tmp284129
                                                     (if _phi?278770_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp284129))))
                                         (declare (not safe))
                                         (cons __tmp284130 __tmp284128))))
                                  (declare (not safe))
                                  (cons __tmp284131 __tmp284127))))
                           (declare (not safe))
                           (cons __tmp284132 __tmp284126))))
                    (declare (not safe))
                    (cons 'declare __tmp284125)))
                 (pretty-print _code278769_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path278768_ __tmp284124))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path278768_ _phi?278770_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path278768_))))
    (define gxc#compile-scm-file__0
      (lambda (_path278776_ _code278777_)
        (let ((_phi?278779_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path278776_ _code278777_ _phi?278779_))))
    (define gxc#compile-scm-file
      (lambda _g284134_
        (let ((_g284133_ (let () (declare (not safe)) (##length _g284134_))))
          (cond ((let () (declare (not safe)) (##fx= _g284133_ 2))
                 (apply (lambda (_path278776_ _code278777_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path278776_
                             _code278777_)))
                        _g284134_))
                ((let () (declare (not safe)) (##fx= _g284133_ 3))
                 (apply (lambda (_path278781_ _code278782_ _phi?278783_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path278781_
                             _code278782_
                             _phi?278783_)))
                        _g284134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g284134_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?278669_)
        (let _lp278671_ ((_rest278673_ (gxc#current-compile-gsc-options))
                         (_opts278674_ '()))
          (let* ((_rest278675278695_ _rest278673_)
                 (_else278679278703_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?278669_))
                             (gxc#current-compile-debug))
                        (let ((__tmp284135
                               (let ((__tmp284136 (reverse _opts278674_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp284136))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp284135))
                        (reverse _opts278674_)))))
            (let ((_K278689278746_
                   (lambda (_rest278744_)
                     (let ()
                       (declare (not safe))
                       (_lp278671_ _rest278744_ _opts278674_))))
                  (_K278684278728_
                   (lambda (_rest278726_)
                     (let ()
                       (declare (not safe))
                       (_lp278671_ _rest278726_ _opts278674_))))
                  (_K278681278710_
                   (lambda (_rest278707_ _opt278708_)
                     (let ((__tmp284137
                            (let ()
                              (declare (not safe))
                              (cons _opt278708_ _opts278674_))))
                       (declare (not safe))
                       (_lp278671_ _rest278707_ __tmp284137)))))
              (if (let () (declare (not safe)) (##pair? _rest278675278695_))
                  (let ((_tl278691278751_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest278675278695_)))
                        (_hd278690278749_
                         (let ()
                           (declare (not safe))
                           (##car _rest278675278695_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd278690278749_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl278691278751_))
                            (let* ((_tl278693278754_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl278691278751_)))
                                   (_rest278757_ _tl278693278754_))
                              (declare (not safe))
                              (_K278689278746_ _rest278757_))
                            (let ((_opt278718_ _hd278690278749_)
                                  (_rest278720_ _tl278691278751_))
                              (let ()
                                (declare (not safe))
                                (_K278681278710_ _rest278720_ _opt278718_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd278690278749_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl278691278751_))
                                (let* ((_tl278688278736_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl278691278751_)))
                                       (_rest278739_ _tl278688278736_))
                                  (declare (not safe))
                                  (_K278684278728_ _rest278739_))
                                (let ((_opt278718_ _hd278690278749_)
                                      (_rest278720_ _tl278691278751_))
                                  (let ()
                                    (declare (not safe))
                                    (_K278681278710_
                                     _rest278720_
                                     _opt278718_))))
                            (let ((_opt278718_ _hd278690278749_)
                                  (_rest278720_ _tl278691278751_))
                              (let ()
                                (declare (not safe))
                                (_K278681278710_ _rest278720_ _opt278718_))))))
                  (let () (declare (not safe)) (_else278679278703_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?278763_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?278763_))))
    (define gxc#gsc-link-options
      (lambda _g284139_
        (let ((_g284138_ (let () (declare (not safe)) (##length _g284139_))))
          (cond ((let () (declare (not safe)) (##fx= _g284138_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g284139_))
                ((let () (declare (not safe)) (##fx= _g284138_ 1))
                 (apply (lambda (_phi?278765_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?278765_)))
                        _g284139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g284139_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?278570_)
        (let _lp278572_ ((_rest278574_ (gxc#current-compile-gsc-options))
                         (_opts278575_ '()))
          (let* ((_rest278576278596_ _rest278574_)
                 (_else278580278604_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?278570_))
                             (gxc#current-compile-debug))
                        (let ((__tmp284140
                               (let ((__tmp284141 (reverse _opts278575_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp284141))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp284140))
                        (reverse _opts278575_)))))
            (let ((_K278590278643_
                   (lambda (_rest278640_ _opt278641_)
                     (let ((__tmp284142
                            (let ((__tmp284143
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts278575_))))
                              (declare (not safe))
                              (cons _opt278641_ __tmp284143))))
                       (declare (not safe))
                       (_lp278572_ _rest278640_ __tmp284142))))
                  (_K278585278624_
                   (lambda (_rest278622_)
                     (let ()
                       (declare (not safe))
                       (_lp278572_ _rest278622_ _opts278575_))))
                  (_K278582278610_
                   (lambda (_rest278608_)
                     (let ()
                       (declare (not safe))
                       (_lp278572_ _rest278608_ _opts278575_)))))
              (if (let () (declare (not safe)) (##pair? _rest278576278596_))
                  (let ((_tl278592278648_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest278576278596_)))
                        (_hd278591278646_
                         (let ()
                           (declare (not safe))
                           (##car _rest278576278596_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd278591278646_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl278592278648_))
                            (let ((_tl278594278653_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl278592278648_)))
                                  (_hd278593278651_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl278592278648_))))
                              (let ((_opt278656_ _hd278593278651_)
                                    (_rest278658_ _tl278594278653_))
                                (let ()
                                  (declare (not safe))
                                  (_K278590278643_ _rest278658_ _opt278656_))))
                            (let ((_rest278616_ _tl278592278648_))
                              (declare (not safe))
                              (_K278582278610_ _rest278616_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd278591278646_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl278592278648_))
                                (let* ((_tl278589278632_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl278592278648_)))
                                       (_rest278635_ _tl278589278632_))
                                  (declare (not safe))
                                  (_K278585278624_ _rest278635_))
                                (let ((_rest278616_ _tl278592278648_))
                                  (declare (not safe))
                                  (_K278582278610_ _rest278616_)))
                            (let ((_rest278616_ _tl278592278648_))
                              (declare (not safe))
                              (_K278582278610_ _rest278616_)))))
                  (let () (declare (not safe)) (_else278580278604_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?278664_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?278664_))))
    (define gxc#gsc-cc-options
      (lambda _g284145_
        (let ((_g284144_ (let () (declare (not safe)) (##length _g284145_))))
          (cond ((let () (declare (not safe)) (##fx= _g284144_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g284145_))
                ((let () (declare (not safe)) (##fx= _g284144_ 1))
                 (apply (lambda (_phi?278666_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?278666_)))
                        _g284145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g284145_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir278565_)
        (let* ((_user-staticdir278567_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp284146
                (let ((__tmp284147
                       (string-append
                        '"-I "
                        _staticdir278565_
                        '" -I "
                        _user-staticdir278567_)))
                  (declare (not safe))
                  (cons __tmp284147 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp284146))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp278477_ ((_rest278479_ (gxc#current-compile-gsc-options))
                         (_opts278480_ '()))
          (let* ((_rest278481278501_ _rest278479_)
                 (_else278485278509_ (lambda () _opts278480_)))
            (let ((_K278495278552_
                   (lambda (_rest278550_)
                     (let ()
                       (declare (not safe))
                       (_lp278477_ _rest278550_ _opts278480_))))
                  (_K278490278530_
                   (lambda (_rest278527_ _opt278528_)
                     (let ((__tmp284148
                            (append _opts278480_
                                    (let ((__tmp284149
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt278528_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp284149)))))
                       (declare (not safe))
                       (_lp278477_ _rest278527_ __tmp284148))))
                  (_K278487278515_
                   (lambda (_rest278513_)
                     (let ()
                       (declare (not safe))
                       (_lp278477_ _rest278513_ _opts278480_)))))
              (if (let () (declare (not safe)) (##pair? _rest278481278501_))
                  (let ((_tl278497278557_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest278481278501_)))
                        (_hd278496278555_
                         (let ()
                           (declare (not safe))
                           (##car _rest278481278501_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd278496278555_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl278497278557_))
                            (let* ((_tl278499278560_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl278497278557_)))
                                   (_rest278563_ _tl278499278560_))
                              (declare (not safe))
                              (_K278495278552_ _rest278563_))
                            (let ((_rest278521_ _tl278497278557_))
                              (declare (not safe))
                              (_K278487278515_ _rest278521_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd278496278555_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl278497278557_))
                                (let ((_tl278494278540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl278497278557_)))
                                      (_hd278493278538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl278497278557_))))
                                  (let ((_opt278543_ _hd278493278538_)
                                        (_rest278545_ _tl278494278540_))
                                    (let ()
                                      (declare (not safe))
                                      (_K278490278530_
                                       _rest278545_
                                       _opt278543_))))
                                (let ((_rest278521_ _tl278497278557_))
                                  (declare (not safe))
                                  (_K278487278515_ _rest278521_)))
                            (let ((_rest278521_ _tl278497278557_))
                              (declare (not safe))
                              (_K278487278515_ _rest278521_)))))
                  (let () (declare (not safe)) (_else278485278509_))))))))
    (define gxc#not-string-empty?
      (lambda (_str278474_)
        (let ((__tmp284150
               (let () (declare (not safe)) (string-empty? _str278474_))))
          (declare (not safe))
          (not __tmp284150))))
    (define gxc#gsc-compile-file
      (lambda (_path278442_ _phi?278443_)
        (letrec ((_gsc-link-path278445_
                  (lambda (_base-path278466_)
                    (let _lp278468_ ((_n278470_ '1))
                      (let ((_path278472_
                             (string-append
                              _base-path278466_
                              '".o"
                              (number->string _n278470_))))
                        (if (file-exists? _path278472_)
                            (let ((__tmp284151
                                   (let ()
                                     (declare (not safe))
                                     (+ _n278470_ '1))))
                              (declare (not safe))
                              (_lp278468_ __tmp284151))
                            _path278472_))))))
          (let* ((_base-path278447_ (path-strip-extension _path278442_))
                 (_path-c278449_ (string-append _base-path278447_ '".c"))
                 (_path-o278451_ (string-append _base-path278447_ '".o"))
                 (_link-path278453_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path278445_ _base-path278447_)))
                 (_link-path-c278455_ (string-append _link-path278453_ '".c"))
                 (_link-path-o278457_ (string-append _link-path278453_ '".o"))
                 (_gsc-link-opts278459_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?278443_)))
                 (_gsc-cc-opts278461_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?278443_)))
                 (_gcc-ld-opts278463_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp284158 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp284152
                   (let ((__tmp284153
                          (let ((__tmp284154
                                 (let ((__tmp284155
                                        (let ((__tmp284156
                                               (let ((__tmp284157
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path278442_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp284157
                                                         _gsc-link-opts278459_))))
                                          (declare (not safe))
                                          (cons _link-path-c278455_
                                                __tmp284156))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp284155))))
                            (declare (not safe))
                            (cons '"-flat" __tmp284154))))
                     (declare (not safe))
                     (cons '"-link" __tmp284153))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp284158 __tmp284152))
            (let ((__tmp284165 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp284159
                   (let ((__tmp284160
                          (let ((__tmp284161
                                 (let ((__tmp284162
                                        (let ((__tmp284163
                                               (let ((__tmp284164
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c278455_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c278449_
                                                       __tmp284164))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp284163
                                                  _gsc-cc-opts278461_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp284162))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp284161))))
                     (declare (not safe))
                     (cons '"-obj" __tmp284160))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp284165 __tmp284159))
            (let ((__tmp284171 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp284166
                   (let ((__tmp284167
                          (let ((__tmp284168
                                 (let ((__tmp284169
                                        (let ((__tmp284170
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o278457_
                                                       _gcc-ld-opts278463_))))
                                          (declare (not safe))
                                          (cons _path-o278451_ __tmp284170))))
                                   (declare (not safe))
                                   (cons _link-path278453_ __tmp284169))))
                            (declare (not safe))
                            (cons '"-o" __tmp284168))))
                     (declare (not safe))
                     (cons '"-shared" __tmp284167))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp284171
               __tmp284166))
            (for-each
             delete-file
             (let ((__tmp284172
                    (let ((__tmp284173
                           (let ((__tmp284174
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o278457_ '()))))
                             (declare (not safe))
                             (cons _link-path-c278455_ __tmp284174))))
                      (declare (not safe))
                      (cons _path-o278451_ __tmp284173))))
               (declare (not safe))
               (cons _path-c278449_ __tmp284172)))))))
    (define gxc#compile-output-file
      (lambda (_ctx278413_ _n278414_ _ext278415_)
        (letrec ((_module-relative-path278417_
                  (lambda (_ctx278440_)
                    (path-strip-directory
                     (let ((__tmp284175
                            (##structure-ref
                             _ctx278440_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp284175)))))
                 (_module-source-directory278418_
                  (lambda (_ctx278436_)
                    (path-directory
                     (let ((_mpath278438_
                            (##structure-ref
                             _ctx278436_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath278438_))
                           _mpath278438_
                           (let ()
                             (declare (not safe))
                             (last _mpath278438_)))))))
                 (_section-string278419_
                  (lambda (_n278434_)
                    (if (let () (declare (not safe)) (number? _n278434_))
                        (number->string _n278434_)
                        (if (let () (declare (not safe)) (symbol? _n278434_))
                            (symbol->string _n278434_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n278434_))
                                _n278434_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n278434_)))))))
                 (_file-name278420_
                  (lambda (_path278432_)
                    (if _n278414_
                        (string-append
                         _path278432_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string278419_ _n278414_))
                         _ext278415_)
                        (string-append _path278432_ _ext278415_))))
                 (_file-path278421_
                  (lambda ()
                    (let ((_$e278427_ (gxc#current-compile-output-dir)))
                      (if _$e278427_
                          ((lambda (_outdir278430_)
                             (path-expand
                              (let ((__tmp284177
                                     (let ((__tmp284178
                                            (##structure-ref
                                             _ctx278413_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp284178))))
                                (declare (not safe))
                                (_file-name278420_ __tmp284177))
                              _outdir278430_))
                           _$e278427_)
                          (path-expand
                           (let ((__tmp284176
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path278417_
                                     _ctx278413_))))
                             (declare (not safe))
                             (_file-name278420_ __tmp284176))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory278418_
                              _ctx278413_))))))))
          (let ((_path278423_
                 (let () (declare (not safe)) (_file-path278421_))))
            (let ((__tmp284179
                   (lambda ()
                     (let ((__tmp284180 (path-directory _path278423_)))
                       (declare (not safe))
                       (create-directory* __tmp284180)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp284179))
            _path278423_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx278395_)
        (letrec ((_file-name278397_
                  (lambda (_id278411_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id278411_))
                     '".scm")))
                 (_file-path278398_
                  (lambda ()
                    (let* ((_file278404_
                            (let ((__tmp284181
                                   (##structure-ref
                                    _ctx278395_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name278397_ __tmp284181)))
                           (_$e278406_ (gxc#current-compile-output-dir)))
                      (if _$e278406_
                          ((lambda (_outdir278409_)
                             (path-expand
                              _file278404_
                              (path-expand '"static" _outdir278409_)))
                           _$e278406_)
                          (path-expand _file278404_ '"static"))))))
          (let ((_path278400_
                 (let () (declare (not safe)) (_file-path278398_))))
            (let ((__tmp284182
                   (lambda ()
                     (let ((__tmp284183 (path-directory _path278400_)))
                       (declare (not safe))
                       (create-directory* __tmp284183)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp284182))
            _path278400_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx278389_ _opts278390_)
        (let ((_$e278392_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts278390_))))
          (if _$e278392_
              (values _$e278392_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx278389_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr278382_)
        (if (let () (declare (not safe)) (string? _idstr278382_))
            (let* ((_str278384_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr278382_)))
                   (_strs278386_
                    (let ()
                      (declare (not safe))
                      (string-split _str278384_ '#\/))))
              (let () (declare (not safe)) (string-join _strs278386_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr278382_))
                (let ((__tmp284184 (symbol->string _idstr278382_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp284184))
                (error '"Bad module id" _idstr278382_)))))
    (define gxc#invoke__%
      (lambda (_g284185_
               _stdout-redirection278346278350_
               _stderr-redirection278347278352_
               _program278354_
               _args278355_)
        (let* ((_stdout-redirection278357_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection278346278350_ absent-value))
                    '#f
                    _stdout-redirection278346278350_))
               (_stderr-redirection278359_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection278347278352_ absent-value))
                    '#f
                    _stderr-redirection278347278352_)))
          (let ((__tmp284186
                 (let ()
                   (declare (not safe))
                   (cons _program278354_ _args278355_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp284186))
          (let ((_proc278361_
                 (open-process
                  (let ((__tmp284187
                         (let ((__tmp284188
                                (let ((__tmp284189
                                       (let ((__tmp284190
                                              (let ((__tmp284191
                                                     (let ((__tmp284192
                                                            (let ((__tmp284193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection278359_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp284193))))
               (declare (not safe))
               (cons _stdout-redirection278357_ __tmp284192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp284191))))
                                         (declare (not safe))
                                         (cons _args278355_ __tmp284190))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp284189))))
                           (declare (not safe))
                           (cons _program278354_ __tmp284188))))
                    (declare (not safe))
                    (cons 'path: __tmp284187)))))
            (if (or _stdout-redirection278357_ _stderr-redirection278359_)
                (read-line _proc278361_ '#f)
                '#!void)
            (let ((_status278366_ (process-status _proc278361_)))
              (close-port _proc278361_)
              (if (let () (declare (not safe)) (zero? _status278366_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program278354_))))))))
    (define gxc#invoke__@
      (lambda (_keys278345278371_ . _args278373_)
        (apply gxc#invoke__%
               _keys278345278371_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys278345278371_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys278345278371_
                  'stderr-redirection:
                  absent-value))
               _args278373_)))
    (define gxc#invoke
      (lambda _args278348278379_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args278348278379_)))
    (define gxc#join!
      (lambda (_thread278339_)
        (let ((__tmp284195
               (lambda (_exn278341_)
                 (if (uncaught-exception? _exn278341_)
                     (raise (uncaught-exception-reason _exn278341_))
                     (raise _exn278341_))))
              (__tmp284194 (lambda () (thread-join! _thread278339_))))
          (declare (not safe))
          (with-catch __tmp284195 __tmp284194))))))
