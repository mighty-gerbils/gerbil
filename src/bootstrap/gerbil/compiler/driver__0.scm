(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707384302)
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
      (lambda (_path279635_ _fun279636_)
        (with-output-to-file
         (let ((__tmp283923
                (let ()
                  (declare (not safe))
                  (cons _path279635_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp283923))
         _fun279636_)))
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
      (lambda (_gerbil-libdir279630_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir279630_)))
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
      (lambda (_dir279628_) (delete-file-or-directory _dir279628_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath279602_ _opts279603_)
        (if (let () (declare (not safe)) (string? _srcpath279602_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath279602_)))
        (let ((_outdir279605_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts279603_)))
              (_invoke-gsc?279606_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts279603_)))
              (_gsc-options279607_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts279603_)))
              (_keep-scm?279608_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts279603_)))
              (_verbosity279609_
               (let () (declare (not safe)) (pgetq 'verbose: _opts279603_)))
              (_optimize279610_
               (let () (declare (not safe)) (pgetq 'optimize: _opts279603_)))
              (_debug279611_
               (let () (declare (not safe)) (pgetq 'debug: _opts279603_)))
              (_gen-ssxi279612_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts279603_))))
          (if _outdir279605_
              (let ((__tmp283924
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir279605_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp283924))
              '#!void)
          (if _optimize279610_
              (let ((__tmp283925
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp283925))
              '#!void)
          (let ((__tmp283927
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath279602_))
                   (let ((__tmp283928
                          (let ((__tmp283929
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath279602_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp283929))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp283928))))
                (__tmp283926
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp283927
             gxc#current-compile-output-dir
             _outdir279605_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?279606_
             gxc#current-compile-gsc-options
             _gsc-options279607_
             gxc#current-compile-keep-scm
             _keep-scm?279608_
             gxc#current-compile-verbose
             _verbosity279609_
             gxc#current-compile-optimize
             _optimize279610_
             gxc#current-compile-debug
             _debug279611_
             gxc#current-compile-generate-ssxi
             _gen-ssxi279612_
             gxc#current-compile-timestamp
             __tmp283926
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath279621_)
        (let ((_opts279623_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath279621_ _opts279623_))))
    (define gxc#compile-module
      (lambda _g283931_
        (let ((_g283930_ (let () (declare (not safe)) (##length _g283931_))))
          (cond ((let () (declare (not safe)) (##fx= _g283930_ 1))
                 (apply (lambda (_srcpath279621_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath279621_)))
                        _g283931_))
                ((let () (declare (not safe)) (##fx= _g283930_ 2))
                 (apply (lambda (_srcpath279625_ _opts279626_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath279625_
                             _opts279626_)))
                        _g283931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g283931_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath279578_ _opts279579_)
        (if (let () (declare (not safe)) (string? _srcpath279578_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath279578_)))
        (let ((_outdir279581_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts279579_)))
              (_invoke-gsc?279582_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts279579_)))
              (_gsc-options279583_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts279579_)))
              (_keep-scm?279584_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts279579_)))
              (_verbosity279585_
               (let () (declare (not safe)) (pgetq 'verbose: _opts279579_)))
              (_debug279586_
               (let () (declare (not safe)) (pgetq 'debug: _opts279579_))))
          (if _outdir279581_
              (let ((__tmp283932
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir279581_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp283932))
              '#!void)
          (let ((__tmp283934
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath279578_))
                   (let ((__tmp283935
                          (let ((__tmp283936
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath279578_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp283936))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp283935
                      _opts279579_))))
                (__tmp283933
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp283934
             gxc#current-compile-output-dir
             _outdir279581_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?279582_
             gxc#current-compile-gsc-options
             _gsc-options279583_
             gxc#current-compile-keep-scm
             _keep-scm?279584_
             gxc#current-compile-verbose
             _verbosity279585_
             gxc#current-compile-debug
             _debug279586_
             gxc#current-compile-timestamp
             __tmp283933
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath279594_)
        (let ((_opts279596_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath279594_ _opts279596_))))
    (define gxc#compile-exe
      (lambda _g283938_
        (let ((_g283937_ (let () (declare (not safe)) (##length _g283938_))))
          (cond ((let () (declare (not safe)) (##fx= _g283937_ 1))
                 (apply (lambda (_srcpath279594_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath279594_)))
                        _g283938_))
                ((let () (declare (not safe)) (##fx= _g283937_ 2))
                 (apply (lambda (_srcpath279598_ _opts279599_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath279598_ _opts279599_)))
                        _g283938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g283938_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx279574_ _opts279575_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts279575_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx279574_
               _opts279575_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx279574_
               _opts279575_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx279457_ _opts279458_)
        (letrec ((_generate-stub279460_
                  (lambda (_builtin-modules279570_)
                    (let ((_mod-main279572_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx279457_ 'main))))
                      (write (let ((__tmp283939
                                    (let ((__tmp283940
                                           (let ((__tmp283941
                                                  (let ((__tmp283942
                                                         (let ((__tmp283944
                                                                (let ((__tmp283945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules279570_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp283945)))
                       (__tmp283943
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp283944 __tmp283943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp283942))))
                                             (declare (not safe))
                                             (cons __tmp283941 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp283940))))
                               (declare (not safe))
                               (cons 'define __tmp283939)))
                      (write (let ((__tmp283946
                                    (let ((__tmp283985
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp283947
                                           (let ((__tmp283948
                                                  (let ((__tmp283949
                                                         (let ((__tmp283973
                                                                (let ((__tmp283974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp283975
                                      (let ((__tmp283983
                                             (let ((__tmp283984
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp283984)))
                                            (__tmp283976
                                             (let ((__tmp283977
                                                    (let ((__tmp283978
                                                           (let ((__tmp283979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283980
                                 (let ((__tmp283981
                                        (let ((__tmp283982
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp283982 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp283981))))
                            (declare (not safe))
                            (cons __tmp283980 '()))))
                     (declare (not safe))
                     (cons _mod-main279572_ __tmp283979))))
              (declare (not safe))
              (cons 'apply __tmp283978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283977 '()))))
                                        (declare (not safe))
                                        (cons __tmp283983 __tmp283976))))
                                 (declare (not safe))
                                 (cons '() __tmp283975))))
                          (declare (not safe))
                          (cons 'lambda __tmp283974)))
                       (__tmp283950
                        (let ((__tmp283951
                               (let ((__tmp283952
                                      (let ((__tmp283953
                                             (let ((__tmp283964
                                                    (let ((__tmp283965
                                                           (let ((__tmp283966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283967
                                 (let ((__tmp283968
                                        (let ((__tmp283969
                                               (let ((__tmp283970
                                                      (let ((__tmp283971
                                                             (let ((__tmp283972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp283972 '()))))
                (declare (not safe))
                (cons 'force-output __tmp283971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp283970 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp283969))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp283968))))
                            (declare (not safe))
                            (cons __tmp283967 '()))))
                     (declare (not safe))
                     (cons 'void __tmp283966))))
              (declare (not safe))
              (cons 'with-catch __tmp283965)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp283954
                                                    (let ((__tmp283955
                                                           (let ((__tmp283956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp283957
                                 (let ((__tmp283958
                                        (let ((__tmp283959
                                               (let ((__tmp283960
                                                      (let ((__tmp283961
                                                             (let ((__tmp283962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp283963
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp283963 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp283962))))
                (declare (not safe))
                (cons __tmp283961 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp283960))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp283959))))
                                   (declare (not safe))
                                   (cons __tmp283958 '()))))
                            (declare (not safe))
                            (cons 'void __tmp283957))))
                     (declare (not safe))
                     (cons 'with-catch __tmp283956))))
              (declare (not safe))
              (cons __tmp283955 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp283964
                                                     __tmp283954))))
                                        (declare (not safe))
                                        (cons '() __tmp283953))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp283952))))
                          (declare (not safe))
                          (cons __tmp283951 '()))))
                   (declare (not safe))
                   (cons __tmp283973 __tmp283950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp283949))))
                                             (declare (not safe))
                                             (cons __tmp283948 '()))))
                                      (declare (not safe))
                                      (cons __tmp283985 __tmp283947))))
                               (declare (not safe))
                               (cons 'define __tmp283946)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts279461_
                  (lambda (_libgerbil279568_)
                    (call-with-input-file
                     (string-append _libgerbil279568_ '".ldd")
                     read)))
                 (_replace-extension279462_
                  (lambda (_path279565_ _ext279566_)
                    (string-append
                     (path-strip-extension _path279565_)
                     _ext279566_)))
                 (_not-exclude-module?279463_
                  (lambda (_ctx279561_)
                    (let ((_id-str279563_
                           (symbol->string
                            (##structure-ref
                             _ctx279561_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp283987
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str279563_))))
                            (declare (not safe))
                            (not __tmp283987))
                          (let ((__tmp283986
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str279563_))))
                            (declare (not safe))
                            (not __tmp283986))
                          '#f))))
                 (_not-file-empty?279464_
                  (lambda (_path279559_)
                    (let ((__tmp283988
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path279559_))))
                      (declare (not safe))
                      (not __tmp283988))))
                 (_compile-stub279465_
                  (lambda (_output-scm279472_ _output-bin279473_)
                    (let* ((_gerbil-home279475_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir279477_
                            (path-expand '"lib" _gerbil-home279475_))
                           (_gerbil-staticdir279479_
                            (path-expand '"static" _gerbil-libdir279477_))
                           (_gxlink279481_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir279477_))
                           (_tmp279483_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path279487_
                            (lambda (_f279485_)
                              (path-expand
                               (path-strip-directory _f279485_)
                               _tmp279483_)))
                           (_deps279489_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx279457_)))
                           (_deps279491_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?279463_
                                      _deps279489_)))
                           (_src-deps-scm279493_
                            (map gxc#find-static-module-file _deps279491_))
                           (_src-deps-scm279495_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?279464_
                                      _src-deps-scm279493_)))
                           (_src-deps-scm279497_
                            (map path-expand _src-deps-scm279495_))
                           (_deps-scm279499_
                            (map _tmp-path279487_ _src-deps-scm279497_))
                           (_deps-c279505_
                            (map (lambda (_g279500279502_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension279462_
                                      _g279500279502_
                                      '".c")))
                                 _deps-scm279499_))
                           (_deps-o279511_
                            (map (lambda (_g279506279508_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension279462_
                                      _g279506279508_
                                      '".o")))
                                 _deps-scm279499_))
                           (_src-bin-scm279513_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx279457_)))
                           (_src-bin-scm279515_
                            (path-expand _src-bin-scm279513_))
                           (_bin-scm279517_
                            (let ()
                              (declare (not safe))
                              (_tmp-path279487_ _src-bin-scm279515_)))
                           (_bin-c279519_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279462_
                               _bin-scm279517_
                               '".c")))
                           (_bin-o279521_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279462_
                               _bin-scm279517_
                               '".o")))
                           (_output-bin279523_
                            (path-expand _output-bin279473_))
                           (_output-scm279525_
                            (path-expand _output-scm279472_))
                           (_output-c279527_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279462_
                               _output-scm279525_
                               '".c")))
                           (_output-o279529_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279462_
                               _output-scm279525_
                               '".o")))
                           (_output_-c279531_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279462_
                               _output-scm279525_
                               '"_.c")))
                           (_output_-o279533_
                            (let ()
                              (declare (not safe))
                              (_replace-extension279462_
                               _output-scm279525_
                               '"_.o")))
                           (_gsc-link-opts279535_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts279537_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts279539_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir279479_)))
                           (_output-ld-opts279541_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a279543_
                            (path-expand '"libgerbil.a" _gerbil-libdir279477_))
                           (_libgerbil.so279545_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir279477_))
                           (_libgerbil-ld-opts279547_
                            (if (file-exists? _libgerbil.so279545_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts279461_
                                   _libgerbil.so279545_))
                                (if (file-exists? _libgerbil.a279543_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts279461_
                                       _libgerbil.a279543_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a279543_
                                       _libgerbil.so279545_)))))
                           (_rpath279549_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir279477_)))
                           (_builtin-modules279553_
                            (map (lambda (_mod279551_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod279551_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx279457_ _deps279491_)))))
                      (let ((__tmp283989
                             (lambda ()
                               (let ((__tmp283990
                                      (path-directory _output-bin279523_)))
                                 (declare (not safe))
                                 (create-directory* __tmp283990)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp283989))
                      (let ((__tmp283991
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub279460_
                                  _builtin-modules279553_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm279525_
                         __tmp283991))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp283992
                                   (lambda () (create-directory _tmp279483_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp283992))
                            (for-each
                             copy-file
                             _src-deps-scm279497_
                             _deps-scm279499_)
                            (copy-file _src-bin-scm279515_ _bin-scm279517_)
                            (let ((__tmp284000
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp283993
                                   (let ((__tmp283994
                                          (let ((__tmp283995
                                                 (let ((__tmp283996
                                                        (let ((__tmp283997
                                                               (let ((__tmp283998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp283999
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm279525_ '()))))
                                (declare (not safe))
                                (cons _bin-scm279517_ __tmp283999))))
                         (declare (not safe))
                         (foldr1 cons __tmp283998 _deps-scm279499_))))
                  (declare (not safe))
                  (foldr1 cons __tmp283997 _gsc-link-opts279535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink279481_
                                                         __tmp283996))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp283995))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp283994))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284000
                               __tmp283993))
                            (let ((__tmp284008
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp284001
                                   (let ((__tmp284002
                                          (let ((__tmp284003
                                                 (let ((__tmp284004
                                                        (let ((__tmp284005
                                                               (let ((__tmp284006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284007
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c279531_ '()))))
                                (declare (not safe))
                                (cons _output-c279527_ __tmp284007))))
                         (declare (not safe))
                         (cons _bin-c279519_ __tmp284006))))
                  (declare (not safe))
                  (foldr1 cons __tmp284005 _deps-c279505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp284004
                                                           _gsc-static-opts279539_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp284003
                                                    _gsc-cc-opts279537_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp284002))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284008
                               __tmp284001))
                            (let ((__tmp284021
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp284009
                                   (let ((__tmp284010
                                          (let ((__tmp284011
                                                 (let ((__tmp284012
                                                        (let ((__tmp284013
                                                               (let ((__tmp284014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284015
                                     (let ((__tmp284016
                                            (let ((__tmp284017
                                                   (let ((__tmp284018
                                                          (let ((__tmp284019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp284020
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts279547_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp284020))))
                    (declare (not safe))
                    (cons _gerbil-libdir279477_ __tmp284019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp284018))))
                                              (declare (not safe))
                                              (cons _rpath279549_
                                                    __tmp284017))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp284016
                                               _output-ld-opts279541_))))
                                (declare (not safe))
                                (cons _output_-o279533_ __tmp284015))))
                         (declare (not safe))
                         (cons _output-o279529_ __tmp284014))))
                  (declare (not safe))
                  (cons _bin-o279521_ __tmp284013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp284012
                                                           _deps-o279511_))))
                                            (declare (not safe))
                                            (cons _output-bin279523_
                                                  __tmp284011))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp284010))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284021
                               __tmp284009))
                            (for-each
                             delete-file
                             (let ((__tmp284022
                                    (let ((__tmp284023
                                           (let ((__tmp284024
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o279533_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o279529_
                                                   __tmp284024))))
                                      (declare (not safe))
                                      (cons _output_-c279531_ __tmp284023))))
                               (declare (not safe))
                               (cons _output-c279527_ __tmp284022)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp279483_)))
                          '#!void)))))
          (let* ((_output-bin279467_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx279457_ _opts279458_)))
                 (_output-scm279469_
                  (string-append _output-bin279467_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub279465_ _output-scm279469_ _output-bin279467_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm279469_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx279282_ _opts279283_)
        (letrec ((_reset-declare279285_
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
                 (_generate-stub279286_
                  (lambda (_deps279448_)
                    (let ((_mod-main279450_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx279282_ 'main)))
                          (_reset-decl279451_
                           (let ()
                             (declare (not safe))
                             (_reset-declare279285_)))
                          (_user-decl279452_
                           (let ()
                             (declare (not safe))
                             (_user-declare279287_))))
                      (for-each
                       (lambda (_dep279454_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl279451_)
                         (newline)
                         (if _user-decl279452_
                             (begin (write _user-decl279452_) (newline))
                             '#!void)
                         (write (let ((__tmp284025
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep279454_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp284025)))
                         (newline))
                       _deps279448_)
                      (write (let ((__tmp284026
                                    (let ((__tmp284039
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp284027
                                           (let ((__tmp284035
                                                  (let ((__tmp284036
                                                         (let ((__tmp284037
                                                                (let ((__tmp284038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp284038))))
                   (declare (not safe))
                   (cons __tmp284037 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp284036)))
                                                 (__tmp284028
                                                  (let ((__tmp284029
                                                         (let ((__tmp284030
                                                                (let ((__tmp284031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp284032
                                      (let ((__tmp284033
                                             (let ((__tmp284034
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp284034 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp284033))))
                                 (declare (not safe))
                                 (cons __tmp284032 '()))))
                          (declare (not safe))
                          (cons _mod-main279450_ __tmp284031))))
                   (declare (not safe))
                   (cons 'apply __tmp284030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284029 '()))))
                                             (declare (not safe))
                                             (cons __tmp284035 __tmp284028))))
                                      (declare (not safe))
                                      (cons __tmp284039 __tmp284027))))
                               (declare (not safe))
                               (cons 'define __tmp284026)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare279287_
                  (lambda ()
                    (let* ((_gsc-opts279353_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts279283_)))
                           (_gsc-prelude279355_
                            (if _gsc-opts279353_
                                (member '"-prelude" _gsc-opts279353_)
                                '#f))
                           (_gsc-prelude279357_
                            (if _gsc-prelude279355_
                                (read (open-input-string
                                       (cadr _gsc-prelude279355_)))
                                '#f)))
                      (let _lp279360_ ((_rest279362_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude279357_ '())))
                                       (_user-decls279363_ '()))
                        (let* ((_rest279364279372_ _rest279362_)
                               (_else279366279380_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls279363_))
                                      '#f
                                      (let ((__tmp284040
                                             (reverse _user-decls279363_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp284040)))))
                               (_K279368279436_
                                (lambda (_rest279383_ _expr279384_)
                                  (let* ((_expr279385279397_ _expr279384_)
                                         (_else279388279405_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp279360_
                                               _rest279383_
                                               _user-decls279363_)))))
                                    (let ((_K279393279426_
                                           (lambda (_decls279424_)
                                             (let ((__tmp284041
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls279363_
                                                              _decls279424_))))
                                               (declare (not safe))
                                               (_lp279360_
                                                _rest279383_
                                                __tmp284041))))
                                          (_K279390279411_
                                           (lambda (_exprs279409_)
                                             (let ((__tmp284042
                                                    (append _exprs279409_
                                                            _rest279383_)))
                                               (declare (not safe))
                                               (_lp279360_
                                                __tmp284042
                                                _user-decls279363_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr279385279397_))
                                          (let ((_tl279395279431_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr279385279397_)))
                                                (_hd279394279429_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr279385279397_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd279394279429_
                                                         'declare))
                                                (let ((_decls279434_
                                                       _tl279395279431_))
                                                  (declare (not safe))
                                                  (_K279393279426_
                                                   _decls279434_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd279394279429_
                                                             'begin))
                                                    (let ((_exprs279419_
                                                           _tl279395279431_))
                                                      (declare (not safe))
                                                      (_K279390279411_
                                                       _exprs279419_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else279388279405_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else279388279405_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest279364279372_))
                              (let ((_hd279369279439_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest279364279372_)))
                                    (_tl279370279441_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest279364279372_))))
                                (let* ((_expr279444_ _hd279369279439_)
                                       (_rest279446_ _tl279370279441_))
                                  (declare (not safe))
                                  (_K279368279436_ _rest279446_ _expr279444_)))
                              (let ()
                                (declare (not safe))
                                (_else279366279380_))))))))
                 (_compile-stub279288_
                  (lambda (_output-scm279295_ _output-bin279296_)
                    (let* ((_gerbil-home279298_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir279300_
                            (path-expand '"lib" _gerbil-home279298_))
                           (_runtime279302_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp279304_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home279298_))
                           (_include-gambit-sharp279306_
                            (string-append
                             '"(include \""
                             _gambit-sharp279304_
                             '"\")"))
                           (_bin-scm279308_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx279282_)))
                           (_deps279310_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx279282_)))
                           (_deps279312_
                            (map gxc#find-static-module-file _deps279310_))
                           (_deps279317_
                            (let ((__tmp284043
                                   (lambda (_$obj279314_)
                                     (let ((__tmp284044
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj279314_))))
                                       (declare (not safe))
                                       (not __tmp284044)))))
                              (declare (not safe))
                              (filter __tmp284043 _deps279312_)))
                           (_deps279321_
                            (let ((__tmp284045
                                   (lambda (_f279319_)
                                     (let ((__tmp284046
                                            (member _f279319_
                                                    _runtime279302_)))
                                       (declare (not safe))
                                       (not __tmp284046)))))
                              (declare (not safe))
                              (filter __tmp284045 _deps279317_)))
                           (_output-base279323_
                            (string-append
                             (path-strip-extension _output-scm279295_)))
                           (_output-c279325_
                            (string-append _output-base279323_ '".c"))
                           (_output-o279327_
                            (string-append _output-base279323_ '".o"))
                           (_output-c_279329_
                            (string-append _output-base279323_ '"_.c"))
                           (_output-o_279331_
                            (string-append _output-base279323_ '"_.o"))
                           (_gsc-link-opts279333_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts279335_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts279337_
                            (let ((__tmp284047
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir279300_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp284047)))
                           (_output-ld-opts279339_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros279341_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp284049
                                       (let ((__tmp284050
                                              (let ((__tmp284051
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp279306_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp284051))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp284050))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp284049))
                                (let ((__tmp284048
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp279306_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp284048))))
                           (_gsc-link-opts279343_
                            (append _gsc-link-opts279333_
                                    _gsc-gx-macros279341_))
                           (_rpath279345_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir279300_)))
                           (_default-ld-options279347_
                            (let ((__tmp284052
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp284052))))
                      (let ((__tmp284053
                             (lambda ()
                               (let ((__tmp284054
                                      (path-directory _output-bin279296_)))
                                 (declare (not safe))
                                 (create-directory* __tmp284054)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp284053))
                      (let ((__tmp284055
                             (lambda ()
                               (let ((__tmp284056
                                      (let ((__tmp284057
                                             (let ((__tmp284058
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm279308_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp284058
                                                       _deps279321_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp284057
                                                _runtime279302_))))
                                 (declare (not safe))
                                 (_generate-stub279286_ __tmp284056)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm279295_
                         __tmp284055))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp284064
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp284059
                                   (let ((__tmp284060
                                          (let ((__tmp284061
                                                 (let ((__tmp284062
                                                        (let ((__tmp284063
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm279295_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp284063 _gsc-link-opts279343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_279329_
                                                         __tmp284062))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp284061))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp284060))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284064
                               __tmp284059))
                            (let ((__tmp284070
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp284065
                                   (let ((__tmp284066
                                          (let ((__tmp284067
                                                 (let ((__tmp284068
                                                        (let ((__tmp284069
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_279329_ '()))))
                  (declare (not safe))
                  (cons _output-c279325_ __tmp284069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp284068
                                                           _gsc-static-opts279337_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp284067
                                                    _gsc-cc-opts279335_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp284066))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284070
                               __tmp284065))
                            (let ((__tmp284080
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp284071
                                   (let ((__tmp284072
                                          (let ((__tmp284073
                                                 (let ((__tmp284074
                                                        (let ((__tmp284075
                                                               (let ((__tmp284076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp284077
                                     (let ((__tmp284078
                                            (let ((__tmp284079
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options279347_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir279300_
                                                    __tmp284079))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp284078))))
                                (declare (not safe))
                                (cons _rpath279345_ __tmp284077))))
                         (declare (not safe))
                         (foldr1 cons __tmp284076 _output-ld-opts279339_))))
                  (declare (not safe))
                  (cons _output-o_279331_ __tmp284075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o279327_
                                                         __tmp284074))))
                                            (declare (not safe))
                                            (cons _output-bin279296_
                                                  __tmp284073))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp284072))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp284080
                               __tmp284071)))
                          '#!void)))))
          (let* ((_output-bin279290_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx279282_ _opts279283_)))
                 (_output-scm279292_
                  (string-append _output-bin279290_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub279288_ _output-scm279292_ _output-bin279290_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm279292_))))))
    (define gxc#find-export-binding
      (lambda (_ctx279232_ _id279233_)
        (let ((_$e279279_
               (let ((__tmp284082
                      (lambda (_e279234279236_)
                        (let* ((_g279238279248_ _e279234279236_)
                               (_else279240279256_ (lambda () '#f))
                               (_K279242279260_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g279238279248_
                                 'gx#module-export::t))
                              (let* ((_e279243279263_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g279238279248_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e279244279266_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g279238279248_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e279245279269_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g279238279248_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e279245279269_ '0))
                                    (let ((_e279246279272_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g279238279248_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g279274279276_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g279274279276_
                                                    _id279233_)))
                                           _e279246279272_)
                                          (let ()
                                            (declare (not safe))
                                            (_K279242279260_))
                                          (let ()
                                            (declare (not safe))
                                            (_else279240279256_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else279240279256_))))
                              (let ()
                                (declare (not safe))
                                (_else279240279256_))))))
                     (__tmp284081
                      (##structure-ref
                       _ctx279232_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp284082 __tmp284081))))
          (if _$e279279_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e279279_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx279224_ _id279225_)
        (let ((_$e279227_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx279224_ _id279225_))))
          (if _$e279227_
              ((lambda (_bind279230_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind279230_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id279225_)))
                 (##structure-ref _bind279230_ '1 gx#binding::t '#f))
               _$e279227_)
              (let ((__tmp284083
                     (##structure-ref
                      _ctx279224_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp284083
                 _id279225_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx279111_)
        (letrec* ((_ht279113_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template279114_
                   (lambda (_in279176_ _phi279177_)
                     (let ((_iphi279179_
                            (fx+ _phi279177_
                                 (##direct-structure-ref
                                  _in279176_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports279180_
                            (##structure-ref
                             (##direct-structure-ref
                              _in279176_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp279182_ ((_rest279184_ _imports279180_)
                                        (_r279185_ '()))
                         (let* ((_rest279186279194_ _rest279184_)
                                (_else279188279202_ (lambda () _r279185_))
                                (_K279190279212_
                                 (lambda (_rest279205_ _in279206_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in279206_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi279179_))
                                           (let ((__tmp284090
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in279206_
                                                          _r279185_))))
                                             (declare (not safe))
                                             (_lp279182_
                                              _rest279205_
                                              __tmp284090))
                                           (let ()
                                             (declare (not safe))
                                             (_lp279182_
                                              _rest279205_
                                              _r279185_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in279206_
                                              'gx#module-import::t))
                                           (let ((_iphi279208_
                                                  (fx+ _phi279177_
                                                       (##direct-structure-ref
                                                        _in279206_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi279208_))
                                                 (let ((__tmp284088
                                                        (let ((__tmp284089
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in279206_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp284089 _r279185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp279182_
                                                    _rest279205_
                                                    __tmp284088))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp279182_
                                                    _rest279205_
                                                    _r279185_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in279206_
                                                  'gx#import-set::t))
                                               (let ((_xphi279210_
                                                      (fx+ _iphi279179_
                                                           (##direct-structure-ref
                                                            _in279206_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi279210_))
                                                     (let ((__tmp284086
                                                            (let ((__tmp284087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in279206_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp284087 _r279185_))))
               (declare (not safe))
               (_lp279182_ _rest279205_ __tmp284086))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi279210_)
                                                         (let ((__tmp284084
                                                                (let ((__tmp284085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template279114_
                                  _in279206_
                                  _iphi279179_))))
                          (declare (not safe))
                          (foldl1 cons _r279185_ __tmp284085))))
                   (declare (not safe))
                   (_lp279182_ _rest279205_ __tmp284084))
                 (let ()
                   (declare (not safe))
                   (_lp279182_ _rest279205_ _r279185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp279182_
                                                  _rest279205_
                                                  _r279185_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest279186279194_))
                               (let ((_hd279191279215_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest279186279194_)))
                                     (_tl279192279217_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest279186279194_))))
                                 (let* ((_in279220_ _hd279191279215_)
                                        (_rest279222_ _tl279192279217_))
                                   (declare (not safe))
                                   (_K279190279212_ _rest279222_ _in279220_)))
                               (let ()
                                 (declare (not safe))
                                 (_else279188279202_))))))))
                  (_find-deps279115_
                   (lambda (_rest279122_ _deps279123_)
                     (let* ((_rest279124279132_ _rest279122_)
                            (_else279126279140_ (lambda () _deps279123_))
                            (_K279128279164_
                             (lambda (_rest279143_ _hd279144_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd279144_
                                      'gx#module-context::t))
                                   (let ((_id279146_
                                          (##structure-ref
                                           _hd279144_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports279147_
                                          (##structure-ref
                                           _hd279144_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht279113_
                                            _id279146_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps279115_
                                            _rest279143_
                                            _deps279123_))
                                         (let ((_$e279149_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd279144_))))
                                           (if _$e279149_
                                               ((lambda (_pre279152_)
                                                  (let ((_xdeps279154_
                                                         (let ((__tmp284103
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre279152_ _imports279147_))))
                   (declare (not safe))
                   (_find-deps279115_ __tmp284103 _deps279123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht279113_
                                                       _id279146_
                                                       _hd279144_))
                                                    (let ((__tmp284104
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd279144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps279154_))))
              (declare (not safe))
              (_find-deps279115_ _rest279143_ __tmp284104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e279149_)
                                               (let ((_xdeps279156_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps279115_
                                                         _imports279147_
                                                         _deps279123_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht279113_
                                                    _id279146_
                                                    _hd279144_))
                                                 (let ((__tmp284102
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd279144_
                                                                _xdeps279156_))))
                                                   (declare (not safe))
                                                   (_find-deps279115_
                                                    _rest279143_
                                                    __tmp284102)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd279144_
                                          'gx#prelude-context::t))
                                       (let ((_id279158_
                                              (##structure-ref
                                               _hd279144_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht279113_
                                                _id279158_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps279115_
                                                _rest279143_
                                                _deps279123_))
                                             (let ((_xdeps279160_
                                                    (let ((__tmp284100
                                                           (##structure-ref
                                                            _hd279144_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps279115_
                                                       __tmp284100
                                                       _deps279123_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht279113_
                                                      _id279158_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps279115_
                                                      _rest279143_
                                                      _xdeps279160_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht279113_
                                                        _id279158_
                                                        _hd279144_))
                                                     (let ((__tmp284101
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd279144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps279160_))))
               (declare (not safe))
               (_find-deps279115_ _rest279143_ __tmp284101)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd279144_
                                              'gx#module-import::t))
                                           (if (let ((__tmp284099
                                                      (##direct-structure-ref
                                                       _hd279144_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp284099))
                                               (let ((__tmp284097
                                                      (let ((__tmp284098
                                                             (##direct-structure-ref
                                                              _hd279144_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp284098
                                                              _rest279143_))))
                                                 (declare (not safe))
                                                 (_find-deps279115_
                                                  __tmp284097
                                                  _deps279123_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps279115_
                                                  _rest279143_
                                                  _deps279123_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd279144_
                                                  'gx#module-export::t))
                                               (let ((__tmp284095
                                                      (let ((__tmp284096
                                                             (##direct-structure-ref
                                                              _hd279144_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp284096
                                                              _rest279143_))))
                                                 (declare (not safe))
                                                 (_find-deps279115_
                                                  __tmp284095
                                                  _deps279123_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd279144_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp284094
                                                              (##direct-structure-ref
                                                               _hd279144_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp284094))
                                                       (let ((__tmp284092
                                                              (let ((__tmp284093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd279144_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp284093 _rest279143_))))
                 (declare (not safe))
                 (_find-deps279115_ __tmp284092 _deps279123_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd279144_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps279162_
                           (let ()
                             (declare (not safe))
                             (_import-set-template279114_ _hd279144_ '0)))
                          (__tmp284091
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest279143_ _xdeps279162_))))
                     (declare (not safe))
                     (_find-deps279115_ __tmp284091 _deps279123_))
                   (let ()
                     (declare (not safe))
                     (_find-deps279115_ _rest279143_ _deps279123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd279144_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest279124279132_))
                           (let ((_hd279129279167_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest279124279132_)))
                                 (_tl279130279169_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest279124279132_))))
                             (let* ((_hd279172_ _hd279129279167_)
                                    (_rest279174_ _tl279130279169_))
                               (declare (not safe))
                               (_K279128279164_ _rest279174_ _hd279172_)))
                           (let ()
                             (declare (not safe))
                             (_else279126279140_)))))))
          (reverse (let ((__tmp284105
                          (let ((__tmp284106
                                 (let ((_$e279117_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx279111_))))
                                   (if _$e279117_
                                       ((lambda (_pre279120_)
                                          (let ((__tmp284107
                                                 (##structure-ref
                                                  _ctx279111_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre279120_ __tmp284107)))
                                        _$e279117_)
                                       (##structure-ref
                                        _ctx279111_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps279115_ __tmp284106 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp284105))))))
    (define gxc#find-static-module-file
      (lambda (_ctx279042_)
        (let* ((_context-id279044_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx279042_
                       'gx#module-context::t))
                    (##structure-ref _ctx279042_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx279042_)))
               (_scm279046_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id279044_))
                 '".scm"))
               (_dirs279048_ (gx#current-expander-module-library-path))
               (_dirs279054_
                (let ((_user-libpath279050_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath279050_
                      (let ((_user-libpath279052_
                             (path-expand '"lib" _user-libpath279050_)))
                        (if (member _user-libpath279052_ _dirs279048_)
                            _dirs279048_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath279052_ _dirs279048_))))
                      _dirs279048_)))
               (_dirs279063_
                (let ((_$e279056_ (gxc#current-compile-output-dir)))
                  (if _$e279056_
                      ((lambda (_g279058279060_)
                         (let ()
                           (declare (not safe))
                           (cons _g279058279060_ _dirs279054_)))
                       _$e279056_)
                      _dirs279054_)))
               (_dirs279069_
                (map (lambda (_g279064279066_)
                       (path-expand '"static" _g279064279066_))
                     _dirs279063_)))
          (let _lp279072_ ((_rest279074_ _dirs279069_))
            (let* ((_rest279075279083_ _rest279074_)
                   (_else279077279091_
                    (lambda ()
                      (let ((__tmp284108
                             (##structure-ref
                              _ctx279042_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp284108
                         _scm279046_))))
                   (_K279079279099_
                    (lambda (_rest279094_ _dir279095_)
                      (let ((_path279097_
                             (path-expand _scm279046_ _dir279095_)))
                        (if (file-exists? _path279097_)
                            _path279097_
                            (let ()
                              (declare (not safe))
                              (_lp279072_ _rest279094_)))))))
              (if (let () (declare (not safe)) (##pair? _rest279075279083_))
                  (let ((_hd279080279102_
                         (let ()
                           (declare (not safe))
                           (##car _rest279075279083_)))
                        (_tl279081279104_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest279075279083_))))
                    (let* ((_dir279107_ _hd279080279102_)
                           (_rest279109_ _tl279081279104_))
                      (declare (not safe))
                      (_K279079279099_ _rest279109_ _dir279107_)))
                  (let () (declare (not safe)) (_else279077279091_))))))))
    (define gxc#file-empty?
      (lambda (_path279040_)
        (let ((__tmp284109 (file-info-size (file-info _path279040_ '#t))))
          (declare (not safe))
          (zero? __tmp284109))))
    (define gxc#compile-top-module
      (lambda (_ctx279029_)
        (let ((__tmp284113
               (lambda ()
                 (let ((__tmp284114
                        (##structure-ref
                         _ctx279029_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp284114))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp284115
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx279029_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp284115))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx279029_))
                 (if (let ((__tmp284118
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx279029_))))
                       (declare (not safe))
                       (null? __tmp284118))
                     (let* ((_thr1279034_
                             (let ((__tmp284116
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx279029_)))))
                               (declare (not safe))
                               (spawn __tmp284116)))
                            (_thr2279037_
                             (let ((__tmp284117
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx279029_)))))
                               (declare (not safe))
                               (spawn __tmp284117))))
                       (let () (declare (not safe)) (gxc#join! _thr1279034_))
                       (let () (declare (not safe)) (gxc#join! _thr2279037_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx279029_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx279029_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx279029_))
                     '#!void)))
              (__tmp284112
               (let ((__obj283921 (make-object* gxc#symbol-table::t '3)))
                 (gxc#symbol-table:::init! __obj283921)
                 __obj283921))
              (__tmp284111
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp284110 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp284113
           gx#current-expander-context
           _ctx279029_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp284112
           gxc#current-compile-runtime-sections
           __tmp284111
           gxc#current-compile-runtime-names
           __tmp284110))))
    (define gxc#collect-bindings
      (lambda (_ctx279027_)
        (let ((__tmp284119
               (##structure-ref _ctx279027_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp284119))))
    (define gxc#compile-runtime-code
      (lambda (_ctx278973_)
        (letrec ((_compile1278975_
                  (lambda (_ctx279016_)
                    (let* ((_code279018_
                            (##structure-ref
                             _ctx279016_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt279022_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code279018_))
                                (let ((_idstr279020_
                                       (let ((__tmp284120
                                              (##structure-ref
                                               _ctx279016_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp284120))))
                                  (string-append _idstr279020_ '"__0"))
                                '#f)))
                      (if _rt279022_
                          (begin
                            (let ((__tmp284121
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp284121 _ctx279016_ _rt279022_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code278977_
                               _ctx279016_
                               _code279018_)))
                          (let ((_path279025_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx279016_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path279025_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code278978_
                         _ctx279016_
                         _code279018_
                         _rt279022_)))))
                 (_context-timestamp278976_
                  (lambda (_ctx279014_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx279014_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code278977_
                  (lambda (_ctx278996_ _code278997_)
                    (let* ((_lifts278999_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code279002_
                            (let ((__tmp284124
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code278997_))))
                                  (__tmp284123
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp284122
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp284124
                               gx#current-expander-context
                               _ctx278996_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts278999_
                               gxc#current-compile-marks
                               __tmp284123
                               gxc#current-compile-identifiers
                               __tmp284122)))
                           (_runtime-code279004_
                            (if (let ((__tmp284128 (unbox _lifts278999_)))
                                  (declare (not safe))
                                  (null? __tmp284128))
                                _runtime-code279002_
                                (let ((__tmp284125
                                       (let ((__tmp284127
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code279002_
                                                      '())))
                                             (__tmp284126
                                              (reverse (unbox _lifts278999_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp284127
                                                 __tmp284126))))
                                  (declare (not safe))
                                  (cons 'begin __tmp284125))))
                           (_runtime-code279006_
                            (let ((__tmp284129
                                   (let ((__tmp284131
                                          (let ((__tmp284132
                                                 (let ((__tmp284135
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp278976_
                                                           _ctx278996_)))
                                                       (__tmp284133
                                                        (let ((__tmp284134
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp284134
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp284135
                                                         __tmp284133))))
                                            (declare (not safe))
                                            (cons 'define __tmp284132)))
                                         (__tmp284130
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code279004_ '()))))
                                     (declare (not safe))
                                     (cons __tmp284131 __tmp284130))))
                              (declare (not safe))
                              (cons 'begin __tmp284129)))
                           (_scm0279008_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx278996_
                               '0
                               '".scm"))))
                      (let ((_scms279011_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx278996_))))
                        (let ((__tmp284136
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0279008_
                                    _runtime-code279006_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp284136
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms279011_)
                            (delete-file _scms279011_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0279008_
                           '" => "
                           _scms279011_))
                        (copy-file _scm0279008_ _scms279011_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0279008_))))))
                 (_generate-loader-code278978_
                  (lambda (_ctx278985_ _code278986_ _rt278987_)
                    (let* ((_loader-code278990_
                            (let ((__tmp284137
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code278986_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp284137
                               gx#current-expander-context
                               _ctx278985_)))
                           (_loader-code278992_
                            (if _rt278987_
                                (let ((__tmp284138
                                       (let ((__tmp284139
                                              (let ((__tmp284140
                                                     (let ((__tmp284141
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt278987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp284141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp284140 '()))))
                                         (declare (not safe))
                                         (cons _loader-code278990_
                                               __tmp284139))))
                                  (declare (not safe))
                                  (cons 'begin __tmp284138))
                                _loader-code278990_)))
                      (let ((__tmp284142
                             (lambda ()
                               (let ((__tmp284143
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx278985_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp284143
                                  _loader-code278992_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp284142
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules278980_
                 (let ((__tmp284144
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx278973_))))
                   (declare (not safe))
                   (cons _ctx278973_ __tmp284144))))
            (for-each
             (lambda (_ctx278982_)
               (let ((__tmp284145
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1278975_ _ctx278982_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp284145
                  gxc#current-compile-decls
                  '())))
             _all-modules278980_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx278870_)
        (letrec ((_compile-ssi278872_
                  (lambda (_code278943_)
                    (let* ((_path278945_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx278870_
                               '#f
                               '".ssi")))
                           (_prelude278956_
                            (let* ((_super278947_
                                    (##structure-ref
                                     _ctx278870_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e278949_
                                    (##structure-ref
                                     _super278947_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e278949_
                                  ((lambda (_g278951278953_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g278951278953_)))
                                   _$e278949_)
                                  ':<root>)))
                           (_ns278958_
                            (##structure-ref
                             _ctx278870_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr278960_
                            (symbol->string
                             (##structure-ref
                              _ctx278870_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg278967_
                            (let ((_$e278962_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr278960_ '#\/))))
                              (if _$e278962_
                                  ((lambda (_x278965_)
                                     (string->symbol
                                      (substring _idstr278960_ '0 _x278965_)))
                                   _$e278962_)
                                  '#f)))
                           (_rt278969_
                            (let ((__tmp284146
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp284146 _ctx278870_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path278945_))
                      (let ((__tmp284147
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude278956_))
                               (if _pkg278967_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg278967_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns278958_))
                               (newline)
                               (pretty-print _code278943_)
                               (if _rt278969_
                                   (pretty-print
                                    (let ((__tmp284148
                                           (let ((__tmp284152
                                                  (let ((__tmp284153
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp284153)))
                                                 (__tmp284149
                                                  (let ((__tmp284150
                                                         (let ((__tmp284151
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt278969_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp284151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp284150 '()))))
                                             (declare (not safe))
                                             (cons __tmp284152 __tmp284149))))
                                      (declare (not safe))
                                      (cons '%#call __tmp284148)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path278945_
                         __tmp284147)))))
                 (_compile-phi278873_
                  (lambda (_part278883_)
                    (let* ((_part278884278897_ _part278883_)
                           (_E278886278901_
                            (lambda ()
                              (error '"No clause matching"
                                     _part278884278897_)))
                           (_K278887278912_
                            (lambda (_code278904_
                                     _n278905_
                                     _phi278906_
                                     _phi-ctx278907_)
                              (let* ((_code278910_
                                      (let ((__tmp284154
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code278904_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp284154
                                         gx#current-expander-context
                                         _phi-ctx278907_
                                         gx#current-expander-phi
                                         _phi278906_)))
                                     (__tmp284155
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx278870_
                                         _n278905_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp284155
                                 _code278910_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part278884278897_))
                          (let ((_hd278888278915_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part278884278897_)))
                                (_tl278889278917_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part278884278897_))))
                            (let ((_phi-ctx278920_ _hd278888278915_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl278889278917_))
                                  (let ((_hd278890278922_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl278889278917_)))
                                        (_tl278891278924_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl278889278917_))))
                                    (let ((_phi278927_ _hd278890278922_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl278891278924_))
                                          (let ((_hd278892278929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl278891278924_)))
                                                (_tl278893278931_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl278891278924_))))
                                            (let ((_n278934_ _hd278892278929_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl278893278931_))
                                                  (let ((_hd278894278936_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl278893278931_)))
                                                        (_tl278895278938_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl278893278931_))))
                                                    (let ((_code278941_
                                                           _hd278894278936_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl278895278938_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K278887278912_
                                                             _code278941_
                                                             _n278934_
                                                             _phi278927_
                                                             _phi-ctx278920_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E278886278901_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E278886278901_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E278886278901_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E278886278901_)))))
                          (let () (declare (not safe)) (_E278886278901_)))))))
          (let ((_g284156_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx278870_))))
            (begin
              (let ((_g284157_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g284156_)
                           (##vector-length _g284156_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g284157_ 2)))
                    (error "Context expects 2 values" _g284157_)))
              (let ((_ssi-code278875_
                     (let () (declare (not safe)) (##vector-ref _g284156_ 0)))
                    (_phi-code278876_
                     (let () (declare (not safe)) (##vector-ref _g284156_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi278872_ _ssi-code278875_))
                  (let ((_threads278881_
                         (map (lambda (_code278878_)
                                (let ((__tmp284158
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi278873_
                                            _code278878_)))))
                                  (declare (not safe))
                                  (spawn __tmp284158)))
                              _phi-code278876_)))
                    (for-each gxc#join! _threads278881_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx278853_)
        (let* ((_path278855_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx278853_ '#f '".ssxi.ss")))
               (_code278857_
                (let ((__tmp284159
                       (##structure-ref
                        _ctx278853_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp284159)))
               (_idstr278859_
                (symbol->string
                 (##structure-ref _ctx278853_ '1 gx#expander-context::t '#f)))
               (_pkg278866_
                (let ((_$e278861_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr278859_ '#\/))))
                  (if _$e278861_
                      ((lambda (_x278864_)
                         (string->symbol
                          (substring _idstr278859_ '0 _x278864_)))
                       _$e278861_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path278855_))
          (let ((__tmp284160
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg278866_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg278866_))
                       '#!void)
                   (newline)
                   (pretty-print _code278857_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path278855_ __tmp284160)))))
    (define gxc#generate-meta-code
      (lambda (_ctx278846_)
        (let* ((_state278848_
                (let ((__obj283922 (make-object* gxc#meta-state::t '5)))
                  (gxc#meta-state:::init! __obj283922 _ctx278846_)
                  __obj283922))
               (_ssi-code278850_
                (let ((__tmp284161
                       (##structure-ref
                        _ctx278846_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp284161 _state278848_))))
          (values _ssi-code278850_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state278848_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx278839_)
        (let ((_lifts278841_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp284164
                 (lambda ()
                   (let ((_code278844_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx278839_))))
                     (if (let ((__tmp284168 (unbox _lifts278841_)))
                           (declare (not safe))
                           (null? __tmp284168))
                         _code278844_
                         (let ((__tmp284165
                                (let ((__tmp284167
                                       (let ()
                                         (declare (not safe))
                                         (cons _code278844_ '())))
                                      (__tmp284166
                                       (reverse (unbox _lifts278841_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp284167 __tmp284166))))
                           (declare (not safe))
                           (cons 'begin __tmp284165))))))
                (__tmp284163
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp284162
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp284164
             gxc#current-compile-lift
             _lifts278841_
             gxc#current-compile-marks
             __tmp284163
             gxc#current-compile-identifiers
             __tmp284162)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx278835_)
        (let ((_modules278837_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp284169
                 (##structure-ref _ctx278835_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp284169 _modules278837_))
          (reverse (unbox _modules278837_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path278818_ _code278819_ _phi?278820_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path278818_))
        (let ((__tmp284170
               (lambda ()
                 (pretty-print
                  (let ((__tmp284171
                         (let ((__tmp284178
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp284172
                                (let ((__tmp284177
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp284173
                                       (let ((__tmp284176
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp284174
                                              (let ((__tmp284175
                                                     (if _phi?278820_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp284175))))
                                         (declare (not safe))
                                         (cons __tmp284176 __tmp284174))))
                                  (declare (not safe))
                                  (cons __tmp284177 __tmp284173))))
                           (declare (not safe))
                           (cons __tmp284178 __tmp284172))))
                    (declare (not safe))
                    (cons 'declare __tmp284171)))
                 (pretty-print _code278819_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path278818_ __tmp284170))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path278818_ _phi?278820_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path278818_))))
    (define gxc#compile-scm-file__0
      (lambda (_path278826_ _code278827_)
        (let ((_phi?278829_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path278826_ _code278827_ _phi?278829_))))
    (define gxc#compile-scm-file
      (lambda _g284180_
        (let ((_g284179_ (let () (declare (not safe)) (##length _g284180_))))
          (cond ((let () (declare (not safe)) (##fx= _g284179_ 2))
                 (apply (lambda (_path278826_ _code278827_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path278826_
                             _code278827_)))
                        _g284180_))
                ((let () (declare (not safe)) (##fx= _g284179_ 3))
                 (apply (lambda (_path278831_ _code278832_ _phi?278833_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path278831_
                             _code278832_
                             _phi?278833_)))
                        _g284180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g284180_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?278719_)
        (let _lp278721_ ((_rest278723_ (gxc#current-compile-gsc-options))
                         (_opts278724_ '()))
          (let* ((_rest278725278745_ _rest278723_)
                 (_else278729278753_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?278719_))
                             (gxc#current-compile-debug))
                        (let ((__tmp284181
                               (let ((__tmp284182 (reverse _opts278724_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp284182))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp284181))
                        (reverse _opts278724_)))))
            (let ((_K278739278796_
                   (lambda (_rest278794_)
                     (let ()
                       (declare (not safe))
                       (_lp278721_ _rest278794_ _opts278724_))))
                  (_K278734278778_
                   (lambda (_rest278776_)
                     (let ()
                       (declare (not safe))
                       (_lp278721_ _rest278776_ _opts278724_))))
                  (_K278731278760_
                   (lambda (_rest278757_ _opt278758_)
                     (let ((__tmp284183
                            (let ()
                              (declare (not safe))
                              (cons _opt278758_ _opts278724_))))
                       (declare (not safe))
                       (_lp278721_ _rest278757_ __tmp284183)))))
              (if (let () (declare (not safe)) (##pair? _rest278725278745_))
                  (let ((_tl278741278801_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest278725278745_)))
                        (_hd278740278799_
                         (let ()
                           (declare (not safe))
                           (##car _rest278725278745_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd278740278799_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl278741278801_))
                            (let* ((_tl278743278804_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl278741278801_)))
                                   (_rest278807_ _tl278743278804_))
                              (declare (not safe))
                              (_K278739278796_ _rest278807_))
                            (let ((_opt278768_ _hd278740278799_)
                                  (_rest278770_ _tl278741278801_))
                              (let ()
                                (declare (not safe))
                                (_K278731278760_ _rest278770_ _opt278768_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd278740278799_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl278741278801_))
                                (let* ((_tl278738278786_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl278741278801_)))
                                       (_rest278789_ _tl278738278786_))
                                  (declare (not safe))
                                  (_K278734278778_ _rest278789_))
                                (let ((_opt278768_ _hd278740278799_)
                                      (_rest278770_ _tl278741278801_))
                                  (let ()
                                    (declare (not safe))
                                    (_K278731278760_
                                     _rest278770_
                                     _opt278768_))))
                            (let ((_opt278768_ _hd278740278799_)
                                  (_rest278770_ _tl278741278801_))
                              (let ()
                                (declare (not safe))
                                (_K278731278760_ _rest278770_ _opt278768_))))))
                  (let () (declare (not safe)) (_else278729278753_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?278813_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?278813_))))
    (define gxc#gsc-link-options
      (lambda _g284185_
        (let ((_g284184_ (let () (declare (not safe)) (##length _g284185_))))
          (cond ((let () (declare (not safe)) (##fx= _g284184_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g284185_))
                ((let () (declare (not safe)) (##fx= _g284184_ 1))
                 (apply (lambda (_phi?278815_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?278815_)))
                        _g284185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g284185_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?278620_)
        (let _lp278622_ ((_rest278624_ (gxc#current-compile-gsc-options))
                         (_opts278625_ '()))
          (let* ((_rest278626278646_ _rest278624_)
                 (_else278630278654_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?278620_))
                             (gxc#current-compile-debug))
                        (let ((__tmp284186
                               (let ((__tmp284187 (reverse _opts278625_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp284187))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp284186))
                        (reverse _opts278625_)))))
            (let ((_K278640278693_
                   (lambda (_rest278690_ _opt278691_)
                     (let ((__tmp284188
                            (let ((__tmp284189
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts278625_))))
                              (declare (not safe))
                              (cons _opt278691_ __tmp284189))))
                       (declare (not safe))
                       (_lp278622_ _rest278690_ __tmp284188))))
                  (_K278635278674_
                   (lambda (_rest278672_)
                     (let ()
                       (declare (not safe))
                       (_lp278622_ _rest278672_ _opts278625_))))
                  (_K278632278660_
                   (lambda (_rest278658_)
                     (let ()
                       (declare (not safe))
                       (_lp278622_ _rest278658_ _opts278625_)))))
              (if (let () (declare (not safe)) (##pair? _rest278626278646_))
                  (let ((_tl278642278698_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest278626278646_)))
                        (_hd278641278696_
                         (let ()
                           (declare (not safe))
                           (##car _rest278626278646_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd278641278696_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl278642278698_))
                            (let ((_tl278644278703_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl278642278698_)))
                                  (_hd278643278701_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl278642278698_))))
                              (let ((_opt278706_ _hd278643278701_)
                                    (_rest278708_ _tl278644278703_))
                                (let ()
                                  (declare (not safe))
                                  (_K278640278693_ _rest278708_ _opt278706_))))
                            (let ((_rest278666_ _tl278642278698_))
                              (declare (not safe))
                              (_K278632278660_ _rest278666_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd278641278696_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl278642278698_))
                                (let* ((_tl278639278682_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl278642278698_)))
                                       (_rest278685_ _tl278639278682_))
                                  (declare (not safe))
                                  (_K278635278674_ _rest278685_))
                                (let ((_rest278666_ _tl278642278698_))
                                  (declare (not safe))
                                  (_K278632278660_ _rest278666_)))
                            (let ((_rest278666_ _tl278642278698_))
                              (declare (not safe))
                              (_K278632278660_ _rest278666_)))))
                  (let () (declare (not safe)) (_else278630278654_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?278714_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?278714_))))
    (define gxc#gsc-cc-options
      (lambda _g284191_
        (let ((_g284190_ (let () (declare (not safe)) (##length _g284191_))))
          (cond ((let () (declare (not safe)) (##fx= _g284190_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g284191_))
                ((let () (declare (not safe)) (##fx= _g284190_ 1))
                 (apply (lambda (_phi?278716_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?278716_)))
                        _g284191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g284191_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir278615_)
        (let* ((_user-staticdir278617_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp284192
                (let ((__tmp284193
                       (string-append
                        '"-I "
                        _staticdir278615_
                        '" -I "
                        _user-staticdir278617_)))
                  (declare (not safe))
                  (cons __tmp284193 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp284192))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp278527_ ((_rest278529_ (gxc#current-compile-gsc-options))
                         (_opts278530_ '()))
          (let* ((_rest278531278551_ _rest278529_)
                 (_else278535278559_ (lambda () _opts278530_)))
            (let ((_K278545278602_
                   (lambda (_rest278600_)
                     (let ()
                       (declare (not safe))
                       (_lp278527_ _rest278600_ _opts278530_))))
                  (_K278540278580_
                   (lambda (_rest278577_ _opt278578_)
                     (let ((__tmp284194
                            (append _opts278530_
                                    (let ((__tmp284195
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt278578_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp284195)))))
                       (declare (not safe))
                       (_lp278527_ _rest278577_ __tmp284194))))
                  (_K278537278565_
                   (lambda (_rest278563_)
                     (let ()
                       (declare (not safe))
                       (_lp278527_ _rest278563_ _opts278530_)))))
              (if (let () (declare (not safe)) (##pair? _rest278531278551_))
                  (let ((_tl278547278607_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest278531278551_)))
                        (_hd278546278605_
                         (let ()
                           (declare (not safe))
                           (##car _rest278531278551_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd278546278605_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl278547278607_))
                            (let* ((_tl278549278610_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl278547278607_)))
                                   (_rest278613_ _tl278549278610_))
                              (declare (not safe))
                              (_K278545278602_ _rest278613_))
                            (let ((_rest278571_ _tl278547278607_))
                              (declare (not safe))
                              (_K278537278565_ _rest278571_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd278546278605_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl278547278607_))
                                (let ((_tl278544278590_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl278547278607_)))
                                      (_hd278543278588_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl278547278607_))))
                                  (let ((_opt278593_ _hd278543278588_)
                                        (_rest278595_ _tl278544278590_))
                                    (let ()
                                      (declare (not safe))
                                      (_K278540278580_
                                       _rest278595_
                                       _opt278593_))))
                                (let ((_rest278571_ _tl278547278607_))
                                  (declare (not safe))
                                  (_K278537278565_ _rest278571_)))
                            (let ((_rest278571_ _tl278547278607_))
                              (declare (not safe))
                              (_K278537278565_ _rest278571_)))))
                  (let () (declare (not safe)) (_else278535278559_))))))))
    (define gxc#not-string-empty?
      (lambda (_str278524_)
        (let ((__tmp284196
               (let () (declare (not safe)) (string-empty? _str278524_))))
          (declare (not safe))
          (not __tmp284196))))
    (define gxc#gsc-compile-file
      (lambda (_path278492_ _phi?278493_)
        (letrec ((_gsc-link-path278495_
                  (lambda (_base-path278516_)
                    (let _lp278518_ ((_n278520_ '1))
                      (let ((_path278522_
                             (string-append
                              _base-path278516_
                              '".o"
                              (number->string _n278520_))))
                        (if (file-exists? _path278522_)
                            (let ((__tmp284197
                                   (let ()
                                     (declare (not safe))
                                     (+ _n278520_ '1))))
                              (declare (not safe))
                              (_lp278518_ __tmp284197))
                            _path278522_))))))
          (let* ((_base-path278497_ (path-strip-extension _path278492_))
                 (_path-c278499_ (string-append _base-path278497_ '".c"))
                 (_path-o278501_ (string-append _base-path278497_ '".o"))
                 (_link-path278503_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path278495_ _base-path278497_)))
                 (_link-path-c278505_ (string-append _link-path278503_ '".c"))
                 (_link-path-o278507_ (string-append _link-path278503_ '".o"))
                 (_gsc-link-opts278509_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?278493_)))
                 (_gsc-cc-opts278511_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?278493_)))
                 (_gcc-ld-opts278513_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp284204 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp284198
                   (let ((__tmp284199
                          (let ((__tmp284200
                                 (let ((__tmp284201
                                        (let ((__tmp284202
                                               (let ((__tmp284203
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path278492_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp284203
                                                         _gsc-link-opts278509_))))
                                          (declare (not safe))
                                          (cons _link-path-c278505_
                                                __tmp284202))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp284201))))
                            (declare (not safe))
                            (cons '"-flat" __tmp284200))))
                     (declare (not safe))
                     (cons '"-link" __tmp284199))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp284204 __tmp284198))
            (let ((__tmp284211 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp284205
                   (let ((__tmp284206
                          (let ((__tmp284207
                                 (let ((__tmp284208
                                        (let ((__tmp284209
                                               (let ((__tmp284210
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c278505_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c278499_
                                                       __tmp284210))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp284209
                                                  _gsc-cc-opts278511_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp284208))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp284207))))
                     (declare (not safe))
                     (cons '"-obj" __tmp284206))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp284211 __tmp284205))
            (let ((__tmp284217 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp284212
                   (let ((__tmp284213
                          (let ((__tmp284214
                                 (let ((__tmp284215
                                        (let ((__tmp284216
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o278507_
                                                       _gcc-ld-opts278513_))))
                                          (declare (not safe))
                                          (cons _path-o278501_ __tmp284216))))
                                   (declare (not safe))
                                   (cons _link-path278503_ __tmp284215))))
                            (declare (not safe))
                            (cons '"-o" __tmp284214))))
                     (declare (not safe))
                     (cons '"-shared" __tmp284213))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp284217
               __tmp284212))
            (for-each
             delete-file
             (let ((__tmp284218
                    (let ((__tmp284219
                           (let ((__tmp284220
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o278507_ '()))))
                             (declare (not safe))
                             (cons _link-path-c278505_ __tmp284220))))
                      (declare (not safe))
                      (cons _path-o278501_ __tmp284219))))
               (declare (not safe))
               (cons _path-c278499_ __tmp284218)))))))
    (define gxc#compile-output-file
      (lambda (_ctx278463_ _n278464_ _ext278465_)
        (letrec ((_module-relative-path278467_
                  (lambda (_ctx278490_)
                    (path-strip-directory
                     (let ((__tmp284221
                            (##structure-ref
                             _ctx278490_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp284221)))))
                 (_module-source-directory278468_
                  (lambda (_ctx278486_)
                    (path-directory
                     (let ((_mpath278488_
                            (##structure-ref
                             _ctx278486_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath278488_))
                           _mpath278488_
                           (let ()
                             (declare (not safe))
                             (last _mpath278488_)))))))
                 (_section-string278469_
                  (lambda (_n278484_)
                    (if (let () (declare (not safe)) (number? _n278484_))
                        (number->string _n278484_)
                        (if (let () (declare (not safe)) (symbol? _n278484_))
                            (symbol->string _n278484_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n278484_))
                                _n278484_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n278484_)))))))
                 (_file-name278470_
                  (lambda (_path278482_)
                    (if _n278464_
                        (string-append
                         _path278482_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string278469_ _n278464_))
                         _ext278465_)
                        (string-append _path278482_ _ext278465_))))
                 (_file-path278471_
                  (lambda ()
                    (let ((_$e278477_ (gxc#current-compile-output-dir)))
                      (if _$e278477_
                          ((lambda (_outdir278480_)
                             (path-expand
                              (let ((__tmp284223
                                     (let ((__tmp284224
                                            (##structure-ref
                                             _ctx278463_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp284224))))
                                (declare (not safe))
                                (_file-name278470_ __tmp284223))
                              _outdir278480_))
                           _$e278477_)
                          (path-expand
                           (let ((__tmp284222
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path278467_
                                     _ctx278463_))))
                             (declare (not safe))
                             (_file-name278470_ __tmp284222))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory278468_
                              _ctx278463_))))))))
          (let ((_path278473_
                 (let () (declare (not safe)) (_file-path278471_))))
            (let ((__tmp284225
                   (lambda ()
                     (let ((__tmp284226 (path-directory _path278473_)))
                       (declare (not safe))
                       (create-directory* __tmp284226)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp284225))
            _path278473_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx278445_)
        (letrec ((_file-name278447_
                  (lambda (_id278461_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id278461_))
                     '".scm")))
                 (_file-path278448_
                  (lambda ()
                    (let* ((_file278454_
                            (let ((__tmp284227
                                   (##structure-ref
                                    _ctx278445_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name278447_ __tmp284227)))
                           (_$e278456_ (gxc#current-compile-output-dir)))
                      (if _$e278456_
                          ((lambda (_outdir278459_)
                             (path-expand
                              _file278454_
                              (path-expand '"static" _outdir278459_)))
                           _$e278456_)
                          (path-expand _file278454_ '"static"))))))
          (let ((_path278450_
                 (let () (declare (not safe)) (_file-path278448_))))
            (let ((__tmp284228
                   (lambda ()
                     (let ((__tmp284229 (path-directory _path278450_)))
                       (declare (not safe))
                       (create-directory* __tmp284229)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp284228))
            _path278450_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx278439_ _opts278440_)
        (let ((_$e278442_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts278440_))))
          (if _$e278442_
              (values _$e278442_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx278439_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr278432_)
        (if (let () (declare (not safe)) (string? _idstr278432_))
            (let* ((_str278434_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr278432_)))
                   (_strs278436_
                    (let ()
                      (declare (not safe))
                      (string-split _str278434_ '#\/))))
              (let () (declare (not safe)) (string-join _strs278436_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr278432_))
                (let ((__tmp284230 (symbol->string _idstr278432_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp284230))
                (error '"Bad module id" _idstr278432_)))))
    (define gxc#invoke__%
      (lambda (_g284231_
               _stdout-redirection278396278400_
               _stderr-redirection278397278402_
               _program278404_
               _args278405_)
        (let* ((_stdout-redirection278407_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection278396278400_ absent-value))
                    '#f
                    _stdout-redirection278396278400_))
               (_stderr-redirection278409_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection278397278402_ absent-value))
                    '#f
                    _stderr-redirection278397278402_)))
          (let ((__tmp284232
                 (let ()
                   (declare (not safe))
                   (cons _program278404_ _args278405_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp284232))
          (let ((_proc278411_
                 (open-process
                  (let ((__tmp284233
                         (let ((__tmp284234
                                (let ((__tmp284235
                                       (let ((__tmp284236
                                              (let ((__tmp284237
                                                     (let ((__tmp284238
                                                            (let ((__tmp284239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection278409_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp284239))))
               (declare (not safe))
               (cons _stdout-redirection278407_ __tmp284238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp284237))))
                                         (declare (not safe))
                                         (cons _args278405_ __tmp284236))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp284235))))
                           (declare (not safe))
                           (cons _program278404_ __tmp284234))))
                    (declare (not safe))
                    (cons 'path: __tmp284233)))))
            (if (or _stdout-redirection278407_ _stderr-redirection278409_)
                (read-line _proc278411_ '#f)
                '#!void)
            (let ((_status278416_ (process-status _proc278411_)))
              (close-port _proc278411_)
              (if (let () (declare (not safe)) (zero? _status278416_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program278404_))))))))
    (define gxc#invoke__@
      (lambda (_keys278395278421_ . _args278423_)
        (apply gxc#invoke__%
               _keys278395278421_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys278395278421_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys278395278421_
                  'stderr-redirection:
                  absent-value))
               _args278423_)))
    (define gxc#invoke
      (lambda _args278398278429_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args278398278429_)))
    (define gxc#join!
      (lambda (_thread278389_)
        (let ((__tmp284241
               (lambda (_exn278391_)
                 (if (uncaught-exception? _exn278391_)
                     (raise (uncaught-exception-reason _exn278391_))
                     (raise _exn278391_))))
              (__tmp284240 (lambda () (thread-join! _thread278389_))))
          (declare (not safe))
          (with-catch __tmp284241 __tmp284240))))))
