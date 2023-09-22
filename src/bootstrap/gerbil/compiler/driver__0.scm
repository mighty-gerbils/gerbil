(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1695377623)
  (begin
    (define gxc#default-gerbil-gsc (path-expand '"gsc" (path-expand '"~~bin")))
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
      (lambda (_path69613_ _fun69614_)
        (with-output-to-file
         (let ((__tmp69687
                (let ()
                  (declare (not safe))
                  (cons _path69613_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp69687))
         _fun69614_)))
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
      (lambda (_dir69608_) (delete-file-or-directory _dir69608_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath69582_ _opts69583_)
        (if (let () (declare (not safe)) (string? _srcpath69582_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath69582_)))
        (let ((_outdir69585_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts69583_)))
              (_invoke-gsc?69586_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts69583_)))
              (_gsc-options69587_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts69583_)))
              (_keep-scm?69588_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts69583_)))
              (_verbosity69589_
               (let () (declare (not safe)) (pgetq 'verbose: _opts69583_)))
              (_optimize69590_
               (let () (declare (not safe)) (pgetq 'optimize: _opts69583_)))
              (_debug69591_
               (let () (declare (not safe)) (pgetq 'debug: _opts69583_)))
              (_gen-ssxi69592_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts69583_))))
          (if _outdir69585_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir69585_))))
              '#!void)
          (if _optimize69590_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let () (declare (not safe)) (gxc#optimizer-info-init!))))
              '#!void)
          (let ((__tmp69689
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath69582_))
                   (let ((__tmp69690
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath69582_))))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp69690))))
                (__tmp69688
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp69689
             gxc#current-compile-output-dir
             _outdir69585_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?69586_
             gxc#current-compile-gsc-options
             _gsc-options69587_
             gxc#current-compile-keep-scm
             _keep-scm?69588_
             gxc#current-compile-verbose
             _verbosity69589_
             gxc#current-compile-optimize
             _optimize69590_
             gxc#current-compile-debug
             _debug69591_
             gxc#current-compile-generate-ssxi
             _gen-ssxi69592_
             gxc#current-compile-timestamp
             __tmp69688
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath69601_)
        (let ((_opts69603_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath69601_ _opts69603_))))
    (define gxc#compile-module
      (lambda _g69692_
        (let ((_g69691_ (let () (declare (not safe)) (##length _g69692_))))
          (cond ((let () (declare (not safe)) (##fx= _g69691_ 1))
                 (apply (lambda (_srcpath69601_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath69601_)))
                        _g69692_))
                ((let () (declare (not safe)) (##fx= _g69691_ 2))
                 (apply (lambda (_srcpath69605_ _opts69606_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath69605_
                             _opts69606_)))
                        _g69692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g69692_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath69559_ _opts69560_)
        (if (let () (declare (not safe)) (string? _srcpath69559_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath69559_)))
        (let ((_outdir69562_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts69560_)))
              (_invoke-gsc?69563_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts69560_)))
              (_gsc-options69564_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts69560_)))
              (_keep-scm?69565_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts69560_)))
              (_verbosity69566_
               (let () (declare (not safe)) (pgetq 'verbose: _opts69560_))))
          (if _outdir69562_
              (with-lock
               gxc#+driver-mutex+
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (create-directory* _outdir69562_))))
              '#!void)
          (let ((__tmp69694
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath69559_))
                   (let ((__tmp69695
                          (with-lock
                           gxc#+driver-mutex+
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _srcpath69559_))))))
                     (declare (not safe))
                     (gxc#compile-executable-module __tmp69695 _opts69560_))))
                (__tmp69693
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp69694
             gxc#current-compile-output-dir
             _outdir69562_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?69563_
             gxc#current-compile-gsc-options
             _gsc-options69564_
             gxc#current-compile-keep-scm
             _keep-scm?69565_
             gxc#current-compile-verbose
             _verbosity69566_
             gxc#current-compile-timestamp
             __tmp69693
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath69574_)
        (let ((_opts69576_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath69574_ _opts69576_))))
    (define gxc#compile-exe
      (lambda _g69697_
        (let ((_g69696_ (let () (declare (not safe)) (##length _g69697_))))
          (cond ((let () (declare (not safe)) (##fx= _g69696_ 1))
                 (apply (lambda (_srcpath69574_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath69574_)))
                        _g69697_))
                ((let () (declare (not safe)) (##fx= _g69696_ 2))
                 (apply (lambda (_srcpath69578_ _opts69579_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath69578_ _opts69579_)))
                        _g69697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g69697_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx69555_ _opts69556_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts69556_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx69555_
               _opts69556_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx69555_
               _opts69556_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx69203_ _opts69204_)
        (letrec ((_generate-stub69206_
                  (lambda (_builtin-modules69551_)
                    (let ((_mod-main69553_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx69203_ 'main))))
                      (write (let ((__tmp69698
                                    (let ((__tmp69699
                                           (let ((__tmp69700
                                                  (let ((__tmp69701
                                                         (let ((__tmp69703
                                                                (let ((__tmp69704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules69551_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp69704)))
                       (__tmp69702
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp69703 __tmp69702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp69701))))
                                             (declare (not safe))
                                             (cons __tmp69700 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp69699))))
                               (declare (not safe))
                               (cons 'define __tmp69698)))
                      (write (let ((__tmp69705
                                    (let ((__tmp69716
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp69706
                                           (let ((__tmp69714
                                                  (let ((__tmp69715
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'builtin-modules
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp69715)))
                                                 (__tmp69707
                                                  (let ((__tmp69708
                                                         (let ((__tmp69709
                                                                (let ((__tmp69710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69711
                                      (let ((__tmp69712
                                             (let ((__tmp69713
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp69713 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp69712))))
                                 (declare (not safe))
                                 (cons __tmp69711 '()))))
                          (declare (not safe))
                          (cons _mod-main69553_ __tmp69710))))
                   (declare (not safe))
                   (cons 'apply __tmp69709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69708 '()))))
                                             (declare (not safe))
                                             (cons __tmp69714 __tmp69707))))
                                      (declare (not safe))
                                      (cons __tmp69716 __tmp69706))))
                               (declare (not safe))
                               (cons 'define __tmp69705)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-gsc-link-opts69207_
                  (lambda ()
                    (let ((_opts69461_
                           (let ()
                             (declare (not safe))
                             (pgetq 'gsc-options: _opts69204_))))
                      (let _lp69463_ ((_rest69465_ _opts69461_)
                                      (_opts69466_ '()))
                        (let* ((_rest6946769487_ _rest69465_)
                               (_else6947169495_
                                (lambda () (reverse _opts69466_))))
                          (let ((_K6948169538_
                                 (lambda (_rest69536_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69463_ _rest69536_ _opts69466_))))
                                (_K6947669520_
                                 (lambda (_rest69518_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69463_ _rest69518_ _opts69466_))))
                                (_K6947369502_
                                 (lambda (_rest69499_ _hd69500_)
                                   (let ((__tmp69717
                                          (let ()
                                            (declare (not safe))
                                            (cons _hd69500_ _opts69466_))))
                                     (declare (not safe))
                                     (_lp69463_ _rest69499_ __tmp69717)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6946769487_))
                                (let ((_tl6948369543_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6946769487_)))
                                      (_hd6948269541_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6946769487_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _hd6948269541_ '"-cc-options"))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6948369543_))
                                          (let* ((_tl6948569546_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _tl6948369543_)))
                                                 (_rest69549_ _tl6948569546_))
                                            (declare (not safe))
                                            (_K6948169538_ _rest69549_))
                                          (let ((_hd69510_ _hd6948269541_)
                                                (_rest69512_ _tl6948369543_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6947369502_
                                               _rest69512_
                                               _hd69510_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _hd6948269541_
                                                    '"-ld-options"))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl6948369543_))
                                              (let* ((_tl6948069528_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _tl6948369543_)))
                                                     (_rest69531_
                                                      _tl6948069528_))
                                                (declare (not safe))
                                                (_K6947669520_ _rest69531_))
                                              (let ((_hd69510_ _hd6948269541_)
                                                    (_rest69512_
                                                     _tl6948369543_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_K6947369502_
                                                   _rest69512_
                                                   _hd69510_))))
                                          (let ((_hd69510_ _hd6948269541_)
                                                (_rest69512_ _tl6948369543_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6947369502_
                                               _rest69512_
                                               _hd69510_))))))
                                (let ()
                                  (declare (not safe))
                                  (_else6947169495_)))))))))
                 (_get-gsc-cc-opts69208_
                  (lambda (_gerbil-staticdir69386_)
                    (let* ((_opts69388_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts69204_)))
                           (_base69390_
                            (string-append '"-I " _gerbil-staticdir69386_))
                           (_user-static-dir69392_
                            (path-expand
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil"))))
                           (_base69394_
                            (string-append
                             _base69390_
                             '" -I "
                             _user-static-dir69392_)))
                      (let _lp69397_ ((_rest69399_ _opts69388_)
                                      (_ccflags69400_ _base69394_))
                        (let* ((_rest6940169415_ _rest69399_)
                               (_else6940469423_
                                (lambda ()
                                  (let ((__tmp69718
                                         (let ()
                                           (declare (not safe))
                                           (cons _ccflags69400_ '()))))
                                    (declare (not safe))
                                    (cons '"-cc-options" __tmp69718)))))
                          (let ((_K6940969443_
                                 (lambda (_rest69440_ _opts69441_)
                                   (let ((__tmp69719
                                          (string-append
                                           _ccflags69400_
                                           '" "
                                           _opts69441_)))
                                     (declare (not safe))
                                     (_lp69397_ _rest69440_ __tmp69719))))
                                (_K6940669429_
                                 (lambda (_rest69427_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69397_ _rest69427_ _ccflags69400_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6940169415_))
                                (let ((_tl6941169448_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6940169415_)))
                                      (_hd6941069446_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6940169415_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _hd6941069446_ '"-cc-options"))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6941169448_))
                                          (let ((_tl6941369453_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6941169448_)))
                                                (_hd6941269451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6941169448_))))
                                            (let ((_opts69456_ _hd6941269451_)
                                                  (_rest69458_ _tl6941369453_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6940969443_
                                                 _rest69458_
                                                 _opts69456_))))
                                          (let ((_rest69435_ _tl6941169448_))
                                            (declare (not safe))
                                            (_K6940669429_ _rest69435_)))
                                      (let ((_rest69435_ _tl6941169448_))
                                        (declare (not safe))
                                        (_K6940669429_ _rest69435_))))
                                (let ()
                                  (declare (not safe))
                                  (_else6940469423_)))))))))
                 (_get-output-ld-opts69209_
                  (lambda ()
                    (let ((_opts69321_
                           (let ()
                             (declare (not safe))
                             (pgetq 'gsc-options: _opts69204_))))
                      (let _lp69323_ ((_rest69325_ _opts69321_)
                                      (_ldflags69326_ '""))
                        (let* ((_rest6932769341_ _rest69325_)
                               (_else6933069349_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (string-empty? _ldflags69326_))
                                      '()
                                      (filter _not-string-empty?69214_
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _ldflags69326_
                                                 '#\space)))))))
                          (let ((_K6933569369_
                                 (lambda (_rest69366_ _opts69367_)
                                   (let ((__tmp69720
                                          (string-append
                                           _ldflags69326_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (string-empty?
                                                  _ldflags69326_))
                                               '""
                                               '" ")
                                           _opts69367_)))
                                     (declare (not safe))
                                     (_lp69323_ _rest69366_ __tmp69720))))
                                (_K6933269355_
                                 (lambda (_rest69353_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69323_ _rest69353_ _ldflags69326_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6932769341_))
                                (let ((_tl6933769374_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6932769341_)))
                                      (_hd6933669372_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6932769341_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _hd6933669372_ '"-ld-options"))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6933769374_))
                                          (let ((_tl6933969379_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6933769374_)))
                                                (_hd6933869377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6933769374_))))
                                            (let ((_opts69382_ _hd6933869377_)
                                                  (_rest69384_ _tl6933969379_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6933569369_
                                                 _rest69384_
                                                 _opts69382_))))
                                          (let ((_rest69361_ _tl6933769374_))
                                            (declare (not safe))
                                            (_K6933269355_ _rest69361_)))
                                      (let ((_rest69361_ _tl6933769374_))
                                        (declare (not safe))
                                        (_K6933269355_ _rest69361_))))
                                (let ()
                                  (declare (not safe))
                                  (_else6933069349_)))))))))
                 (_get-libgerbil-ld-opts69210_
                  (lambda (_libgerbil69318_)
                    (call-with-input-file
                     (string-append _libgerbil69318_ '".ldd")
                     read)))
                 (_replace-extension69211_
                  (lambda (_path69315_ _ext69316_)
                    (string-append
                     (path-strip-extension _path69315_)
                     _ext69316_)))
                 (_not-exclude-module?69212_
                  (lambda (_ctx69311_)
                    (let ((_id-str69313_
                           (symbol->string
                            (##structure-ref
                             _ctx69311_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp69722
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"gerbil/" _id-str69313_))))
                            (declare (not safe))
                            (not __tmp69722))
                          (let ((__tmp69721
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str69313_))))
                            (declare (not safe))
                            (not __tmp69721))
                          '#f))))
                 (_not-file-empty?69213_
                  (lambda (_path69309_)
                    (let ((__tmp69723
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path69309_))))
                      (declare (not safe))
                      (not __tmp69723))))
                 (_not-string-empty?69214_
                  (lambda (_str69307_)
                    (let ((__tmp69724
                           (let ()
                             (declare (not safe))
                             (string-empty? _str69307_))))
                      (declare (not safe))
                      (not __tmp69724))))
                 (_compile-stub69215_
                  (lambda (_output-scm69222_ _output-bin69223_)
                    (let* ((_gerbil-home69225_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_gerbil-libdir69227_
                            (path-expand '"lib" _gerbil-home69225_))
                           (_gerbil-staticdir69229_
                            (path-expand '"static" _gerbil-libdir69227_))
                           (_gxlink69231_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir69227_))
                           (_tmp69233_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path69237_
                            (lambda (_f69235_)
                              (path-expand
                               (path-strip-directory _f69235_)
                               _tmp69233_)))
                           (_deps69239_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx69203_)))
                           (_deps69241_
                            (filter _not-exclude-module?69212_ _deps69239_))
                           (_src-deps-scm69243_
                            (map gxc#find-static-module-file _deps69241_))
                           (_src-deps-scm69245_
                            (filter _not-file-empty?69213_
                                    _src-deps-scm69243_))
                           (_src-deps-scm69247_
                            (map path-expand _src-deps-scm69245_))
                           (_deps-scm69249_
                            (map _tmp-path69237_ _src-deps-scm69247_))
                           (_deps-c69255_
                            (map (lambda (_g6925069252_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension69211_
                                      _g6925069252_
                                      '".c")))
                                 _deps-scm69249_))
                           (_deps-o69261_
                            (map (lambda (_g6925669258_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension69211_
                                      _g6925669258_
                                      '".o")))
                                 _deps-scm69249_))
                           (_src-bin-scm69263_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx69203_)))
                           (_src-bin-scm69265_
                            (path-expand _src-bin-scm69263_))
                           (_bin-scm69267_
                            (let ()
                              (declare (not safe))
                              (_tmp-path69237_ _src-bin-scm69265_)))
                           (_bin-c69269_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69211_ _bin-scm69267_ '".c")))
                           (_bin-o69271_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69211_ _bin-scm69267_ '".o")))
                           (_output-bin69273_ (path-expand _output-bin69223_))
                           (_output-scm69275_ (path-expand _output-scm69222_))
                           (_output-c69277_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69211_
                               _output-scm69275_
                               '".c")))
                           (_output-o69279_
                            (let ()
                              (declare (not safe))
                              (_replace-extension69211_
                               _output-scm69275_
                               '".o")))
                           (_output_69281_
                            (string-append
                             (path-strip-extension _output-scm69275_)
                             '"_"))
                           (_output_-c69283_
                            (string-append _output_69281_ '".c"))
                           (_output_-o69285_
                            (string-append _output_69281_ '".o"))
                           (_gsc-opts69287_
                            (let ()
                              (declare (not safe))
                              (_get-gsc-link-opts69207_)))
                           (_gsc-cc-opts69289_
                            (let ()
                              (declare (not safe))
                              (_get-gsc-cc-opts69208_
                               _gerbil-staticdir69229_)))
                           (_output-ld-opts69291_
                            (let ()
                              (declare (not safe))
                              (_get-output-ld-opts69209_)))
                           (_libgerbil.a69293_
                            (path-expand '"libgerbil.a" _gerbil-libdir69227_))
                           (_libgerbil.so69295_
                            (path-expand '"libgerbil.so" _gerbil-libdir69227_))
                           (_libgerbil-ld-opts69297_
                            (if (file-exists? _libgerbil.so69295_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts69210_
                                   _libgerbil.so69295_))
                                (if (file-exists? _libgerbil.a69293_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts69210_
                                       _libgerbil.a69293_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a69293_
                                       _libgerbil.so69295_)))))
                           (_gerbil-rpath69299_
                            (string-append
                             '"-Wl,-rpath="
                             _gerbil-libdir69227_))
                           (_builtin-modules69303_
                            (map (lambda (_mod69301_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod69301_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx69203_ _deps69241_)))))
                      (let ((__tmp69725 (path-directory _output-bin69273_)))
                        (declare (not safe))
                        (create-directory* __tmp69725))
                      (let ((__tmp69726
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub69206_
                                  _builtin-modules69303_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm69275_
                         __tmp69726))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (create-directory _tmp69233_)
                            (for-each
                             copy-file
                             _src-deps-scm69247_
                             _deps-scm69249_)
                            (copy-file _src-bin-scm69265_ _bin-scm69267_)
                            (let ((__tmp69736
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp69727
                                   (let ((__tmp69728
                                          (let ((__tmp69729
                                                 (let ((__tmp69730
                                                        (let ((__tmp69732
                                                               (let ((__tmp69733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69734
                                     (let ((__tmp69735
                                            (let ()
                                              (declare (not safe))
                                              (cons _output-scm69275_ '()))))
                                       (declare (not safe))
                                       (cons _bin-scm69267_ __tmp69735))))
                                (declare (not safe))
                                (foldr1 cons __tmp69734 _deps-scm69249_))))
                         (declare (not safe))
                         (foldr1 cons __tmp69733 _gsc-opts69287_)))
                      (__tmp69731
                       (let ()
                         (declare (not safe))
                         (gxc#gsc-debug-options__0))))
                  (declare (not safe))
                  (foldr1 cons __tmp69732 __tmp69731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink69231_
                                                         __tmp69730))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp69729))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp69728))))
                              (declare (not safe))
                              (gxc#invoke __tmp69736 __tmp69727))
                            (let ((__tmp69743
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp69737
                                   (let ((__tmp69738
                                          (let ((__tmp69739
                                                 (let ((__tmp69740
                                                        (let ((__tmp69741
                                                               (let ((__tmp69742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _output_-c69283_ '()))))
                         (declare (not safe))
                         (cons _output-c69277_ __tmp69742))))
                  (declare (not safe))
                  (cons _bin-c69269_ __tmp69741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp69740
                                                           _deps-c69255_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp69739
                                                    _gsc-cc-opts69289_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp69738))))
                              (declare (not safe))
                              (gxc#invoke __tmp69743 __tmp69737))
                            (let ((__tmp69756
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp69744
                                   (let ((__tmp69745
                                          (let ((__tmp69746
                                                 (let ((__tmp69747
                                                        (let ((__tmp69748
                                                               (let ((__tmp69749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69750
                                     (let ((__tmp69751
                                            (let ((__tmp69752
                                                   (let ((__tmp69753
                                                          (let ((__tmp69754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69755
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts69297_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp69755))))
                    (declare (not safe))
                    (cons _gerbil-libdir69227_ __tmp69754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L" __tmp69753))))
                                              (declare (not safe))
                                              (cons _gerbil-rpath69299_
                                                    __tmp69752))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp69751
                                               _output-ld-opts69291_))))
                                (declare (not safe))
                                (cons _output_-o69285_ __tmp69750))))
                         (declare (not safe))
                         (cons _output-o69279_ __tmp69749))))
                  (declare (not safe))
                  (cons _bin-o69271_ __tmp69748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp69747
                                                           _deps-o69261_))))
                                            (declare (not safe))
                                            (cons _output-bin69273_
                                                  __tmp69746))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp69745))))
                              (declare (not safe))
                              (gxc#invoke __tmp69756 __tmp69744))
                            (for-each
                             delete-file
                             (let ((__tmp69757
                                    (let ((__tmp69758
                                           (let ((__tmp69759
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o69285_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o69279_
                                                   __tmp69759))))
                                      (declare (not safe))
                                      (cons _output_-c69283_ __tmp69758))))
                               (declare (not safe))
                               (cons _output-c69277_ __tmp69757)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp69233_)))
                          '#!void)))))
          (let* ((_output-bin69217_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx69203_ _opts69204_)))
                 (_output-scm69219_
                  (string-append _output-bin69217_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub69215_ _output-scm69219_ _output-bin69217_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm69219_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx69038_ _opts69039_)
        (letrec ((_reset-declare69041_
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
                 (_generate-stub69042_
                  (lambda (_deps69194_)
                    (let ((_mod-main69196_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx69038_ 'main)))
                          (_reset-decl69197_
                           (let ()
                             (declare (not safe))
                             (_reset-declare69041_)))
                          (_user-decl69198_
                           (let ()
                             (declare (not safe))
                             (_user-declare69044_))))
                      (for-each
                       (lambda (_dep69200_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl69197_)
                         (newline)
                         (if _user-decl69198_
                             (begin (write _user-decl69198_) (newline))
                             '#!void)
                         (write (let ((__tmp69760
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep69200_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp69760)))
                         (newline))
                       _deps69194_)
                      (write (let ((__tmp69761
                                    (let ((__tmp69774
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp69762
                                           (let ((__tmp69770
                                                  (let ((__tmp69771
                                                         (let ((__tmp69772
                                                                (let ((__tmp69773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp69773))))
                   (declare (not safe))
                   (cons __tmp69772 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp69771)))
                                                 (__tmp69763
                                                  (let ((__tmp69764
                                                         (let ((__tmp69765
                                                                (let ((__tmp69766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69767
                                      (let ((__tmp69768
                                             (let ((__tmp69769
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp69769 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp69768))))
                                 (declare (not safe))
                                 (cons __tmp69767 '()))))
                          (declare (not safe))
                          (cons _mod-main69196_ __tmp69766))))
                   (declare (not safe))
                   (cons 'apply __tmp69765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69764 '()))))
                                             (declare (not safe))
                                             (cons __tmp69770 __tmp69763))))
                                      (declare (not safe))
                                      (cons __tmp69774 __tmp69762))))
                               (declare (not safe))
                               (cons 'define __tmp69761)))
                      (write '(gerbil-main))
                      (newline))))
                 (_static-include69043_
                  (lambda (_gsc-opts69187_ _home69188_)
                    (letrec* ((_static-dir69190_
                               (path-expand '"lib/static" _home69188_))
                              (_user-static-dir69191_
                               (path-expand
                                (path-expand
                                 '"lib/static"
                                 (getenv '"GERBIL_PATH" '"~/.gerbil"))))
                              (_cppflags69192_
                               (string-append
                                '"-I "
                                _static-dir69190_
                                '" -I "
                                _user-static-dir69191_)))
                      (append _gsc-opts69187_
                              (let ((__tmp69775
                                     (let ()
                                       (declare (not safe))
                                       (cons _cppflags69192_ '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp69775))))))
                 (_user-declare69044_
                  (lambda ()
                    (let* ((_gsc-opts69092_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts69039_)))
                           (_gsc-prelude69094_
                            (if _gsc-opts69092_
                                (member '"-prelude" _gsc-opts69092_)
                                '#f))
                           (_gsc-prelude69096_
                            (if _gsc-prelude69094_
                                (read (open-input-string
                                       (cadr _gsc-prelude69094_)))
                                '#f)))
                      (let _lp69099_ ((_rest69101_
                                       (let ()
                                         (declare (not safe))
                                         (cons _gsc-prelude69096_ '())))
                                      (_user-decls69102_ '()))
                        (let* ((_rest6910369111_ _rest69101_)
                               (_else6910569119_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls69102_))
                                      '#f
                                      (let ((__tmp69776
                                             (reverse _user-decls69102_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp69776)))))
                               (_K6910769175_
                                (lambda (_rest69122_ _expr69123_)
                                  (let* ((_expr6912469136_ _expr69123_)
                                         (_else6912769144_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp69099_
                                               _rest69122_
                                               _user-decls69102_)))))
                                    (let ((_K6913269165_
                                           (lambda (_decls69163_)
                                             (let ((__tmp69777
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls69102_
                                                              _decls69163_))))
                                               (declare (not safe))
                                               (_lp69099_
                                                _rest69122_
                                                __tmp69777))))
                                          (_K6912969150_
                                           (lambda (_exprs69148_)
                                             (let ((__tmp69778
                                                    (append _exprs69148_
                                                            _rest69122_)))
                                               (declare (not safe))
                                               (_lp69099_
                                                __tmp69778
                                                _user-decls69102_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr6912469136_))
                                          (let ((_tl6913469170_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr6912469136_)))
                                                (_hd6913369168_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr6912469136_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd6913369168_
                                                         'declare))
                                                (let ((_decls69173_
                                                       _tl6913469170_))
                                                  (declare (not safe))
                                                  (_K6913269165_ _decls69173_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd6913369168_
                                                             'begin))
                                                    (let ((_exprs69158_
                                                           _tl6913469170_))
                                                      (declare (not safe))
                                                      (_K6912969150_
                                                       _exprs69158_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else6912769144_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else6912769144_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6910369111_))
                              (let ((_hd6910869178_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6910369111_)))
                                    (_tl6910969180_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6910369111_))))
                                (let* ((_expr69183_ _hd6910869178_)
                                       (_rest69185_ _tl6910969180_))
                                  (declare (not safe))
                                  (_K6910769175_ _rest69185_ _expr69183_)))
                              (let ()
                                (declare (not safe))
                                (_else6910569119_))))))))
                 (_compile-stub69045_
                  (lambda (_output-scm69052_ _output-bin69053_)
                    (let* ((_gerbil-home69055_
                            (getenv '"GERBIL_BUILD_PREFIX" (gerbil-home)))
                           (_runtime69057_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp69059_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home69055_))
                           (_include-gambit-sharp69061_
                            (string-append
                             '"(include \""
                             _gambit-sharp69059_
                             '"\")"))
                           (_bin-scm69063_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx69038_)))
                           (_deps69065_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx69038_)))
                           (_deps69067_
                            (map gxc#find-static-module-file _deps69065_))
                           (_deps69072_
                            (filter (lambda (_$obj69069_)
                                      (let ((__tmp69779
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty? _$obj69069_))))
                                        (declare (not safe))
                                        (not __tmp69779)))
                                    _deps69067_))
                           (_deps69076_
                            (filter (lambda (_f69074_)
                                      (let ((__tmp69780
                                             (member _f69074_ _runtime69057_)))
                                        (declare (not safe))
                                        (not __tmp69780)))
                                    _deps69072_))
                           (_gsc-opts69081_
                            (let ((_$e69078_
                                   (let ()
                                     (declare (not safe))
                                     (pgetq 'gsc-options: _opts69039_))))
                              (if _$e69078_ _$e69078_ '())))
                           (_gsc-opts69083_
                            (let ()
                              (declare (not safe))
                              (_static-include69043_
                               _gsc-opts69081_
                               _gerbil-home69055_)))
                           (_gsc-gx-macros69085_
                            (if (gerbil-runtime-smp?)
                                (let ((__tmp69782
                                       (let ((__tmp69783
                                              (let ((__tmp69784
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp69061_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp69784))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp69783))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp69782))
                                (let ((__tmp69781
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp69061_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp69781))))
                           (_gsc-args69087_
                            (let ((__tmp69785
                                   (let ((__tmp69786
                                          (let ((__tmp69787
                                                 (let ((__tmp69789
                                                        (let ((__tmp69790
                                                               (let ((__tmp69791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _output-scm69052_ '()))))
                         (declare (not safe))
                         (foldr1 cons __tmp69791 _gsc-gx-macros69085_))))
                  (declare (not safe))
                  (foldr1 cons __tmp69790 _gsc-opts69083_)))
               (__tmp69788
                (let () (declare (not safe)) (gxc#gsc-debug-options__0))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp69789
                                                           __tmp69788))))
                                            (declare (not safe))
                                            (cons _output-bin69053_
                                                  __tmp69787))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp69786))))
                              (declare (not safe))
                              (cons '"-exe" __tmp69785))))
                      (let ((__tmp69792 (path-directory _output-bin69053_)))
                        (declare (not safe))
                        (create-directory* __tmp69792))
                      (let ((__tmp69793
                             (lambda ()
                               (let ((__tmp69794
                                      (let ((__tmp69795
                                             (let ((__tmp69796
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm69063_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp69796
                                                       _deps69076_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp69795
                                                _runtime69057_))))
                                 (declare (not safe))
                                 (_generate-stub69042_ __tmp69794)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm69052_
                         __tmp69793))
                      (if (gxc#current-compile-invoke-gsc)
                          (let ((__tmp69797
                                 (let ()
                                   (declare (not safe))
                                   (gxc#gerbil-gsc))))
                            (declare (not safe))
                            (gxc#invoke __tmp69797 _gsc-args69087_))
                          '#!void)))))
          (let* ((_output-bin69047_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx69038_ _opts69039_)))
                 (_output-scm69049_
                  (string-append _output-bin69047_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub69045_ _output-scm69049_ _output-bin69047_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm69049_))))))
    (define gxc#find-export-binding
      (lambda (_ctx68988_ _id68989_)
        (let ((_$e69035_
               (let ((__tmp69799
                      (lambda (_e6899068992_)
                        (let* ((_g6899469004_ _e6899068992_)
                               (_else6899669012_ (lambda () '#f))
                               (_K6899869016_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g6899469004_
                                 'gx#module-export::t))
                              (let* ((_e6899969019_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6899469004_ '1)))
                                     (_e6900069022_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6899469004_ '2)))
                                     (_e6900169025_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6899469004_ '3))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e6900169025_ '0))
                                    (let ((_e6900269028_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g6899469004_ '4))))
                                      (if ((lambda (_g6903069032_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g6903069032_ _id68989_)))
                                           _e6900269028_)
                                          (let ()
                                            (declare (not safe))
                                            (_K6899869016_))
                                          (let ()
                                            (declare (not safe))
                                            (_else6899669012_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else6899669012_))))
                              (let ()
                                (declare (not safe))
                                (_else6899669012_))))))
                     (__tmp69798
                      (##structure-ref
                       _ctx68988_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp69799 __tmp69798))))
          (if _$e69035_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e69035_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx68980_ _id68981_)
        (let ((_$e68983_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx68980_ _id68981_))))
          (if _$e68983_
              ((lambda (_bind68986_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind68986_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id68981_)))
                 (##structure-ref _bind68986_ '1 gx#binding::t '#f))
               _$e68983_)
              (let ((__tmp69800
                     (##structure-ref
                      _ctx68980_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp69800
                 _id68981_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx68867_)
        (letrec* ((_ht68869_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template68870_
                   (lambda (_in68932_ _phi68933_)
                     (let ((_iphi68935_
                            (fx+ _phi68933_
                                 (##direct-structure-ref
                                  _in68932_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports68936_
                            (##structure-ref
                             (##direct-structure-ref
                              _in68932_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp68938_ ((_rest68940_ _imports68936_)
                                       (_r68941_ '()))
                         (let* ((_rest6894268950_ _rest68940_)
                                (_else6894468958_ (lambda () _r68941_))
                                (_K6894668968_
                                 (lambda (_rest68961_ _in68962_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in68962_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi68935_))
                                           (let ((__tmp69807
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in68962_
                                                          _r68941_))))
                                             (declare (not safe))
                                             (_lp68938_
                                              _rest68961_
                                              __tmp69807))
                                           (let ()
                                             (declare (not safe))
                                             (_lp68938_ _rest68961_ _r68941_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in68962_
                                              'gx#module-import::t))
                                           (let ((_iphi68964_
                                                  (fx+ _phi68933_
                                                       (##direct-structure-ref
                                                        _in68962_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi68964_))
                                                 (let ((__tmp69805
                                                        (let ((__tmp69806
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in68962_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp69806 _r68941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp68938_
                                                    _rest68961_
                                                    __tmp69805))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp68938_
                                                    _rest68961_
                                                    _r68941_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in68962_
                                                  'gx#import-set::t))
                                               (let ((_xphi68966_
                                                      (fx+ _iphi68935_
                                                           (##direct-structure-ref
                                                            _in68962_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi68966_))
                                                     (let ((__tmp69803
                                                            (let ((__tmp69804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in68962_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp69804 _r68941_))))
               (declare (not safe))
               (_lp68938_ _rest68961_ __tmp69803))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi68966_)
                                                         (let ((__tmp69801
                                                                (let ((__tmp69802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template68870_
                                  _in68962_
                                  _iphi68935_))))
                          (declare (not safe))
                          (foldl1 cons _r68941_ __tmp69802))))
                   (declare (not safe))
                   (_lp68938_ _rest68961_ __tmp69801))
                 (let ()
                   (declare (not safe))
                   (_lp68938_ _rest68961_ _r68941_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp68938_
                                                  _rest68961_
                                                  _r68941_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest6894268950_))
                               (let ((_hd6894768971_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest6894268950_)))
                                     (_tl6894868973_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest6894268950_))))
                                 (let* ((_in68976_ _hd6894768971_)
                                        (_rest68978_ _tl6894868973_))
                                   (declare (not safe))
                                   (_K6894668968_ _rest68978_ _in68976_)))
                               (let ()
                                 (declare (not safe))
                                 (_else6894468958_))))))))
                  (_find-deps68871_
                   (lambda (_rest68878_ _deps68879_)
                     (let* ((_rest6888068888_ _rest68878_)
                            (_else6888268896_ (lambda () _deps68879_))
                            (_K6888468920_
                             (lambda (_rest68899_ _hd68900_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd68900_
                                      'gx#module-context::t))
                                   (let ((_id68902_
                                          (##structure-ref
                                           _hd68900_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports68903_
                                          (##structure-ref
                                           _hd68900_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref _ht68869_ _id68902_ '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps68871_
                                            _rest68899_
                                            _deps68879_))
                                         (let ((_$e68905_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd68900_))))
                                           (if _$e68905_
                                               ((lambda (_pre68908_)
                                                  (let ((_xdeps68910_
                                                         (let ((__tmp69820
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre68908_ _imports68903_))))
                   (declare (not safe))
                   (_find-deps68871_ __tmp69820 _deps68879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht68869_
                                                       _id68902_
                                                       _hd68900_))
                                                    (let ((__tmp69821
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd68900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps68910_))))
              (declare (not safe))
              (_find-deps68871_ _rest68899_ __tmp69821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e68905_)
                                               (let ((_xdeps68912_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps68871_
                                                         _imports68903_
                                                         _deps68879_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht68869_
                                                    _id68902_
                                                    _hd68900_))
                                                 (let ((__tmp69819
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd68900_
                                                                _xdeps68912_))))
                                                   (declare (not safe))
                                                   (_find-deps68871_
                                                    _rest68899_
                                                    __tmp69819)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd68900_
                                          'gx#prelude-context::t))
                                       (let ((_id68914_
                                              (##structure-ref
                                               _hd68900_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht68869_
                                                _id68914_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps68871_
                                                _rest68899_
                                                _deps68879_))
                                             (let ((_xdeps68916_
                                                    (let ((__tmp69817
                                                           (##structure-ref
                                                            _hd68900_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps68871_
                                                       __tmp69817
                                                       _deps68879_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht68869_
                                                      _id68914_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps68871_
                                                      _rest68899_
                                                      _xdeps68916_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht68869_
                                                        _id68914_
                                                        _hd68900_))
                                                     (let ((__tmp69818
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd68900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps68916_))))
               (declare (not safe))
               (_find-deps68871_ _rest68899_ __tmp69818)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd68900_
                                              'gx#module-import::t))
                                           (if (let ((__tmp69816
                                                      (##direct-structure-ref
                                                       _hd68900_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp69816))
                                               (let ((__tmp69814
                                                      (let ((__tmp69815
                                                             (##direct-structure-ref
                                                              _hd68900_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp69815
                                                              _rest68899_))))
                                                 (declare (not safe))
                                                 (_find-deps68871_
                                                  __tmp69814
                                                  _deps68879_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps68871_
                                                  _rest68899_
                                                  _deps68879_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd68900_
                                                  'gx#module-export::t))
                                               (let ((__tmp69812
                                                      (let ((__tmp69813
                                                             (##direct-structure-ref
                                                              _hd68900_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp69813
                                                              _rest68899_))))
                                                 (declare (not safe))
                                                 (_find-deps68871_
                                                  __tmp69812
                                                  _deps68879_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd68900_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp69811
                                                              (##direct-structure-ref
                                                               _hd68900_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp69811))
                                                       (let ((__tmp69809
                                                              (let ((__tmp69810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd68900_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp69810 _rest68899_))))
                 (declare (not safe))
                 (_find-deps68871_ __tmp69809 _deps68879_))
               (if (fxpositive?
                    (##direct-structure-ref _hd68900_ '2 gx#import-set::t '#f))
                   (let* ((_xdeps68918_
                           (let ()
                             (declare (not safe))
                             (_import-set-template68870_ _hd68900_ '0)))
                          (__tmp69808
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest68899_ _xdeps68918_))))
                     (declare (not safe))
                     (_find-deps68871_ __tmp69808 _deps68879_))
                   (let ()
                     (declare (not safe))
                     (_find-deps68871_ _rest68899_ _deps68879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd68900_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest6888068888_))
                           (let ((_hd6888568923_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest6888068888_)))
                                 (_tl6888668925_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest6888068888_))))
                             (let* ((_hd68928_ _hd6888568923_)
                                    (_rest68930_ _tl6888668925_))
                               (declare (not safe))
                               (_K6888468920_ _rest68930_ _hd68928_)))
                           (let ()
                             (declare (not safe))
                             (_else6888268896_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp69822
                                  (let ((_$e68873_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx68867_))))
                                    (if _$e68873_
                                        ((lambda (_pre68876_)
                                           (let ((__tmp69823
                                                  (##structure-ref
                                                   _ctx68867_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre68876_ __tmp69823)))
                                         _$e68873_)
                                        (##structure-ref
                                         _ctx68867_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps68871_ __tmp69822 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx68804_)
        (let* ((_context-id68806_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx68804_
                       'gx#module-context::t))
                    (##structure-ref _ctx68804_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx68804_)))
               (_scm68808_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id68806_))
                 '".scm"))
               (_dirs68810_ (gx#current-expander-module-library-path))
               (_dirs68819_
                (let ((_$e68812_ (gxc#current-compile-output-dir)))
                  (if _$e68812_
                      ((lambda (_g6881468816_)
                         (let ()
                           (declare (not safe))
                           (cons _g6881468816_ _dirs68810_)))
                       _$e68812_)
                      _dirs68810_)))
               (_dirs68825_
                (map (lambda (_g6882068822_)
                       (path-expand '"static" _g6882068822_))
                     _dirs68819_)))
          (let _lp68828_ ((_rest68830_ _dirs68825_))
            (let* ((_rest6883168839_ _rest68830_)
                   (_else6883368847_
                    (lambda ()
                      (let ((__tmp69824
                             (##structure-ref
                              _ctx68804_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp69824
                         _scm68808_))))
                   (_K6883568855_
                    (lambda (_rest68850_ _dir68851_)
                      (let ((_path68853_ (path-expand _scm68808_ _dir68851_)))
                        (if (file-exists? _path68853_)
                            _path68853_
                            (let ()
                              (declare (not safe))
                              (_lp68828_ _rest68850_)))))))
              (if (let () (declare (not safe)) (##pair? _rest6883168839_))
                  (let ((_hd6883668858_
                         (let ()
                           (declare (not safe))
                           (##car _rest6883168839_)))
                        (_tl6883768860_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6883168839_))))
                    (let* ((_dir68863_ _hd6883668858_)
                           (_rest68865_ _tl6883768860_))
                      (declare (not safe))
                      (_K6883568855_ _rest68865_ _dir68863_)))
                  (let () (declare (not safe)) (_else6883368847_))))))))
    (define gxc#file-empty?
      (lambda (_path68802_)
        (let ((__tmp69825 (file-info-size (file-info _path68802_ '#t))))
          (declare (not safe))
          (zero? __tmp69825))))
    (define gxc#compile-top-module
      (lambda (_ctx68798_)
        (let ((__tmp69829
               (lambda ()
                 (let ((__tmp69830
                        (##structure-ref
                         _ctx68798_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp69830))
                 (if (gxc#current-compile-optimize)
                     (with-lock
                      gxc#+driver-mutex+
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gxc#optimize! _ctx68798_))))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx68798_))
                 (let ()
                   (declare (not safe))
                   (gxc#compile-runtime-code _ctx68798_))
                 (let ()
                   (declare (not safe))
                   (gxc#compile-meta-code _ctx68798_))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx68798_))
                     '#!void)))
              (__tmp69828
               (let ((__obj69685 (make-object gxc#symbol-table::t '2)))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj69685))
                 __obj69685))
              (__tmp69827
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp69826 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp69829
           gx#current-expander-context
           _ctx68798_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp69828
           gxc#current-compile-runtime-sections
           __tmp69827
           gxc#current-compile-runtime-names
           __tmp69826))))
    (define gxc#collect-bindings
      (lambda (_ctx68796_)
        (let ((__tmp69831
               (##structure-ref _ctx68796_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp69831))))
    (define gxc#compile-runtime-code
      (lambda (_ctx68742_)
        (letrec ((_compile168744_
                  (lambda (_ctx68785_)
                    (let* ((_code68787_
                            (##structure-ref
                             _ctx68785_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt68791_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code68787_))
                                (let ((_idstr68789_
                                       (let ((__tmp69832
                                              (##structure-ref
                                               _ctx68785_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp69832))))
                                  (string-append _idstr68789_ '"__0"))
                                '#f)))
                      (if _rt68791_
                          (begin
                            (let ((__tmp69833
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp69833 _ctx68785_ _rt68791_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code68746_
                               _ctx68785_
                               _code68787_)))
                          (let ((_path68794_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx68785_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file _path68794_ void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code68747_
                         _ctx68785_
                         _code68787_
                         _rt68791_)))))
                 (_context-timestamp68745_
                  (lambda (_ctx68783_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx68783_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code68746_
                  (lambda (_ctx68765_ _code68766_)
                    (let* ((_lifts68768_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code68771_
                            (let ((__tmp69836
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code68766_))))
                                  (__tmp69835
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp69834
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp69836
                               gx#current-expander-context
                               _ctx68765_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts68768_
                               gxc#current-compile-marks
                               __tmp69835
                               gxc#current-compile-identifiers
                               __tmp69834)))
                           (_runtime-code68773_
                            (if (let ((__tmp69840 (unbox _lifts68768_)))
                                  (declare (not safe))
                                  (null? __tmp69840))
                                _runtime-code68771_
                                (let ((__tmp69837
                                       (let ((__tmp69839
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code68771_
                                                      '())))
                                             (__tmp69838
                                              (reverse (unbox _lifts68768_))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp69839 __tmp69838))))
                                  (declare (not safe))
                                  (cons 'begin __tmp69837))))
                           (_runtime-code68775_
                            (let ((__tmp69841
                                   (let ((__tmp69843
                                          (let ((__tmp69844
                                                 (let ((__tmp69847
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp68745_
                                                           _ctx68765_)))
                                                       (__tmp69845
                                                        (let ((__tmp69846
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp69846
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp69847
                                                         __tmp69845))))
                                            (declare (not safe))
                                            (cons 'define __tmp69844)))
                                         (__tmp69842
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code68773_ '()))))
                                     (declare (not safe))
                                     (cons __tmp69843 __tmp69842))))
                              (declare (not safe))
                              (cons 'begin __tmp69841)))
                           (_scm068777_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx68765_
                               '0
                               '".scm"))))
                      (let ((_scms68780_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx68765_))))
                        (let ((__tmp69848
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm068777_
                                    _runtime-code68775_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp69848
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms68780_)
                            (delete-file _scms68780_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm068777_
                           '" => "
                           _scms68780_))
                        (copy-file _scm068777_ _scms68780_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm068777_))))))
                 (_generate-loader-code68747_
                  (lambda (_ctx68754_ _code68755_ _rt68756_)
                    (let* ((_loader-code68759_
                            (let ((__tmp69849
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code68755_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp69849
                               gx#current-expander-context
                               _ctx68754_)))
                           (_loader-code68761_
                            (if _rt68756_
                                (let ((__tmp69850
                                       (let ((__tmp69851
                                              (let ((__tmp69852
                                                     (let ((__tmp69853
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt68756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp69853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69852 '()))))
                                         (declare (not safe))
                                         (cons _loader-code68759_
                                               __tmp69851))))
                                  (declare (not safe))
                                  (cons 'begin __tmp69850))
                                _loader-code68759_)))
                      (let ((__tmp69854
                             (lambda ()
                               (let ((__tmp69855
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx68754_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp69855
                                  _loader-code68761_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp69854
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules68749_
                 (let ((__tmp69856
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx68742_))))
                   (declare (not safe))
                   (cons _ctx68742_ __tmp69856))))
            (for-each
             (lambda (_ctx68751_)
               (let ((__tmp69857
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile168744_ _ctx68751_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp69857
                  gxc#current-compile-decls
                  '())))
             _all-modules68749_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx68644_)
        (letrec ((_compile-ssi68646_
                  (lambda (_code68712_)
                    (let* ((_path68714_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx68644_
                               '#f
                               '".ssi")))
                           (_prelude68725_
                            (let* ((_super68716_
                                    (##structure-ref
                                     _ctx68644_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e68718_
                                    (##structure-ref
                                     _super68716_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e68718_
                                  ((lambda (_g6872068722_)
                                     (make-symbol '":" _g6872068722_))
                                   _$e68718_)
                                  ':<root>)))
                           (_ns68727_
                            (##structure-ref
                             _ctx68644_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr68729_
                            (symbol->string
                             (##structure-ref
                              _ctx68644_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg68736_
                            (let ((_$e68731_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr68729_ '#\/))))
                              (if _$e68731_
                                  ((lambda (_x68734_)
                                     (string->symbol
                                      (substring _idstr68729_ '0 _x68734_)))
                                   _$e68731_)
                                  '#f)))
                           (_rt68738_
                            (let ((__tmp69858
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp69858 _ctx68644_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path68714_))
                      (let ((__tmp69859
                             (lambda ()
                               (displayln '"prelude:" '" " _prelude68725_)
                               (if _pkg68736_
                                   (displayln '"package:" '" " _pkg68736_)
                                   '#!void)
                               (displayln '"namespace:" '" " _ns68727_)
                               (newline)
                               (pretty-print _code68712_)
                               (if _rt68738_
                                   (pretty-print
                                    (let ((__tmp69860
                                           (let ((__tmp69864
                                                  (let ((__tmp69865
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp69865)))
                                                 (__tmp69861
                                                  (let ((__tmp69862
                                                         (let ((__tmp69863
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt68738_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp69863))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69862 '()))))
                                             (declare (not safe))
                                             (cons __tmp69864 __tmp69861))))
                                      (declare (not safe))
                                      (cons '%#call __tmp69860)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path68714_
                         __tmp69859)))))
                 (_compile-phi68647_
                  (lambda (_part68652_)
                    (let* ((_part6865368666_ _part68652_)
                           (_E6865568670_
                            (lambda ()
                              (error '"No clause matching" _part6865368666_)))
                           (_K6865668681_
                            (lambda (_code68673_
                                     _n68674_
                                     _phi68675_
                                     _phi-ctx68676_)
                              (let* ((_code68679_
                                      (let ((__tmp69866
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code68673_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp69866
                                         gx#current-expander-context
                                         _phi-ctx68676_
                                         gx#current-expander-phi
                                         _phi68675_)))
                                     (__tmp69867
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx68644_
                                         _n68674_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp69867
                                 _code68679_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part6865368666_))
                          (let ((_hd6865768684_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part6865368666_)))
                                (_tl6865868686_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part6865368666_))))
                            (let ((_phi-ctx68689_ _hd6865768684_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl6865868686_))
                                  (let ((_hd6865968691_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl6865868686_)))
                                        (_tl6866068693_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl6865868686_))))
                                    (let ((_phi68696_ _hd6865968691_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6866068693_))
                                          (let ((_hd6866168698_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6866068693_)))
                                                (_tl6866268700_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6866068693_))))
                                            (let ((_n68703_ _hd6866168698_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl6866268700_))
                                                  (let ((_hd6866368705_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl6866268700_)))
                                                        (_tl6866468707_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl6866268700_))))
                                                    (let ((_code68710_
                                                           _hd6866368705_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl6866468707_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K6865668681_
                                                             _code68710_
                                                             _n68703_
                                                             _phi68696_
                                                             _phi-ctx68689_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E6865568670_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E6865568670_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6865568670_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E6865568670_)))))
                          (let () (declare (not safe)) (_E6865568670_)))))))
          (let ((_g69868_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx68644_))))
            (begin
              (let ((_g69869_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g69868_)
                           (##vector-length _g69868_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g69869_ 2)))
                    (error "Context expects 2 values" _g69869_)))
              (let ((_ssi-code68649_
                     (let () (declare (not safe)) (##vector-ref _g69868_ 0)))
                    (_phi-code68650_
                     (let () (declare (not safe)) (##vector-ref _g69868_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi68646_ _ssi-code68649_))
                  (for-each _compile-phi68647_ _phi-code68650_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx68627_)
        (let* ((_path68629_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx68627_ '#f '".ssxi.ss")))
               (_code68631_
                (let ((__tmp69870
                       (##structure-ref
                        _ctx68627_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp69870)))
               (_idstr68633_
                (symbol->string
                 (##structure-ref _ctx68627_ '1 gx#expander-context::t '#f)))
               (_pkg68640_
                (let ((_$e68635_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr68633_ '#\/))))
                  (if _$e68635_
                      ((lambda (_x68638_)
                         (string->symbol (substring _idstr68633_ '0 _x68638_)))
                       _$e68635_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path68629_))
          (let ((__tmp69871
                 (lambda ()
                   (displayln '"prelude: :gerbil/compiler/ssxi")
                   (if _pkg68640_ (displayln '"package: " _pkg68640_) '#!void)
                   (newline)
                   (pretty-print _code68631_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path68629_ __tmp69871)))))
    (define gxc#generate-meta-code
      (lambda (_ctx68620_)
        (let* ((_state68622_
                (let ((__obj69686 (make-object gxc#meta-state::t '4)))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj69686 _ctx68620_))
                  __obj69686))
               (_ssi-code68624_
                (let ((__tmp69872
                       (##structure-ref
                        _ctx68620_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp69872 _state68622_))))
          (values _ssi-code68624_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state68622_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx68613_)
        (let ((_lifts68615_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp69875
                 (lambda ()
                   (let ((_code68618_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx68613_))))
                     (if (let ((__tmp69879 (unbox _lifts68615_)))
                           (declare (not safe))
                           (null? __tmp69879))
                         _code68618_
                         (let ((__tmp69876
                                (let ((__tmp69878
                                       (let ()
                                         (declare (not safe))
                                         (cons _code68618_ '())))
                                      (__tmp69877
                                       (reverse (unbox _lifts68615_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp69878 __tmp69877))))
                           (declare (not safe))
                           (cons 'begin __tmp69876))))))
                (__tmp69874
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp69873
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp69875
             gxc#current-compile-lift
             _lifts68615_
             gxc#current-compile-marks
             __tmp69874
             gxc#current-compile-identifiers
             __tmp69873)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx68609_)
        (let ((_modules68611_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp69880
                 (##structure-ref _ctx68609_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp69880 _modules68611_))
          (reverse (unbox _modules68611_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path68592_ _code68593_ _phi?68594_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path68592_))
        (let ((__tmp69881
               (lambda ()
                 (pretty-print
                  (let ((__tmp69882
                         (let ((__tmp69889
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp69883
                                (let ((__tmp69888
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp69884
                                       (let ((__tmp69887
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp69885
                                              (let ((__tmp69886
                                                     (if _phi?68594_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons '() __tmp69886))))
                                         (declare (not safe))
                                         (cons __tmp69887 __tmp69885))))
                                  (declare (not safe))
                                  (cons __tmp69888 __tmp69884))))
                           (declare (not safe))
                           (cons __tmp69889 __tmp69883))))
                    (declare (not safe))
                    (cons 'declare __tmp69882)))
                 (pretty-print _code68593_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path68592_ __tmp69881))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path68592_ _phi?68594_))
            '#!void)
        (if (gxc#current-compile-keep-scm) '#!void (delete-file _path68592_))))
    (define gxc#compile-scm-file__0
      (lambda (_path68600_ _code68601_)
        (let ((_phi?68603_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path68600_ _code68601_ _phi?68603_))))
    (define gxc#compile-scm-file
      (lambda _g69891_
        (let ((_g69890_ (let () (declare (not safe)) (##length _g69891_))))
          (cond ((let () (declare (not safe)) (##fx= _g69890_ 2))
                 (apply (lambda (_path68600_ _code68601_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0 _path68600_ _code68601_)))
                        _g69891_))
                ((let () (declare (not safe)) (##fx= _g69890_ 3))
                 (apply (lambda (_path68605_ _code68606_ _phi?68607_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path68605_
                             _code68606_
                             _phi?68607_)))
                        _g69891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g69891_))))))
    (define gxc#gsc-debug-options__%
      (lambda (_phi?68512_)
        (if (gxc#current-compile-debug)
            (if _phi?68512_
                '()
                (let ((__tmp69892
                       (let ((__tmp69893
                              (let ((__tmp69894
                                     (let ()
                                       (declare (not safe))
                                       (cons '"-g" '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp69894))))
                         (declare (not safe))
                         (cons '"-track-scheme" __tmp69893))))
                  (declare (not safe))
                  (cons '"-debug-source" __tmp69892)))
            '())))
    (define gxc#gsc-debug-options__0
      (lambda ()
        (let ((_phi?68587_ '#f))
          (declare (not safe))
          (gxc#gsc-debug-options__% _phi?68587_))))
    (define gxc#gsc-debug-options
      (lambda _g69896_
        (let ((_g69895_ (let () (declare (not safe)) (##length _g69896_))))
          (cond ((let () (declare (not safe)) (##fx= _g69895_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__0)))
                        _g69896_))
                ((let () (declare (not safe)) (##fx= _g69895_ 1))
                 (apply (lambda (_phi?68589_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__% _phi?68589_)))
                        _g69896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-debug-options
                  _g69896_))))))
    (define gxc#gsc-compile-file
      (lambda (_path68498_ _phi?68499_)
        (let* ((_gsc-args68506_
                (let ((_$e68501_ (gxc#current-compile-gsc-options)))
                  (if _$e68501_
                      ((lambda (_opts68504_)
                         (let ((__tmp69897
                                (let ()
                                  (declare (not safe))
                                  (cons _path68498_ '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp69897 _opts68504_)))
                       _$e68501_)
                      (let () (declare (not safe)) (cons _path68498_ '())))))
               (_gsc-args68508_
                (let ((__tmp69898
                       (let ()
                         (declare (not safe))
                         (gxc#gsc-debug-options__% _phi?68499_))))
                  (declare (not safe))
                  (foldr1 cons _gsc-args68506_ __tmp69898))))
          (let ((__tmp69899 (let () (declare (not safe)) (gxc#gerbil-gsc))))
            (declare (not safe))
            (gxc#invoke __tmp69899 _gsc-args68508_)))))
    (define gxc#compile-output-file
      (lambda (_ctx68470_ _n68471_ _ext68472_)
        (letrec ((_module-relative-path68474_
                  (lambda (_ctx68496_)
                    (path-strip-directory
                     (let ((__tmp69900
                            (##structure-ref
                             _ctx68496_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp69900)))))
                 (_module-source-directory68475_
                  (lambda (_ctx68492_)
                    (path-directory
                     (let ((_mpath68494_
                            (##structure-ref
                             _ctx68492_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let () (declare (not safe)) (string? _mpath68494_))
                           _mpath68494_
                           (let ()
                             (declare (not safe))
                             (last _mpath68494_)))))))
                 (_section-string68476_
                  (lambda (_n68490_)
                    (if (let () (declare (not safe)) (number? _n68490_))
                        (number->string _n68490_)
                        (if (let () (declare (not safe)) (symbol? _n68490_))
                            (symbol->string _n68490_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n68490_))
                                _n68490_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n68490_)))))))
                 (_file-name68477_
                  (lambda (_path68488_)
                    (if _n68471_
                        (string-append
                         _path68488_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string68476_ _n68471_))
                         _ext68472_)
                        (string-append _path68488_ _ext68472_))))
                 (_file-path68478_
                  (lambda ()
                    (let ((_$e68483_ (gxc#current-compile-output-dir)))
                      (if _$e68483_
                          ((lambda (_outdir68486_)
                             (path-expand
                              (let ((__tmp69902
                                     (let ((__tmp69903
                                            (##structure-ref
                                             _ctx68470_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp69903))))
                                (declare (not safe))
                                (_file-name68477_ __tmp69902))
                              _outdir68486_))
                           _$e68483_)
                          (path-expand
                           (let ((__tmp69901
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path68474_ _ctx68470_))))
                             (declare (not safe))
                             (_file-name68477_ __tmp69901))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory68475_ _ctx68470_))))))))
          (let ((_path68480_ (let () (declare (not safe)) (_file-path68478_))))
            (let ((__tmp69904 (path-directory _path68480_)))
              (declare (not safe))
              (create-directory* __tmp69904))
            _path68480_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx68453_)
        (letrec ((_file-name68455_
                  (lambda (_id68468_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id68468_))
                     '".scm")))
                 (_file-path68456_
                  (lambda ()
                    (let* ((_file68461_
                            (let ((__tmp69905
                                   (##structure-ref
                                    _ctx68453_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name68455_ __tmp69905)))
                           (_$e68463_ (gxc#current-compile-output-dir)))
                      (if _$e68463_
                          ((lambda (_outdir68466_)
                             (path-expand
                              _file68461_
                              (path-expand '"static" _outdir68466_)))
                           _$e68463_)
                          (path-expand _file68461_ '"static"))))))
          (let ((_path68458_ (let () (declare (not safe)) (_file-path68456_))))
            (let ((__tmp69906 (path-directory _path68458_)))
              (declare (not safe))
              (create-directory* __tmp69906))
            _path68458_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx68440_ _opts68441_)
        (let ((_$e68443_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts68441_))))
          (if _$e68443_
              (values _$e68443_)
              (let* ((_mod-str68446_
                      (symbol->string
                       (##structure-ref
                        _ctx68440_
                        '1
                        gx#expander-context::t
                        '#f)))
                     (_$e68448_
                      (let ()
                        (declare (not safe))
                        (string-rindex _mod-str68446_ '#\/))))
                (if _$e68448_
                    ((lambda (_ix68451_)
                       (substring
                        _mod-str68446_
                        (let () (declare (not safe)) (fx+ _ix68451_ '1))
                        (string-length _mod-str68446_)))
                     _$e68448_)
                    _mod-str68446_))))))
    (define gxc#static-module-name
      (lambda (_idstr68433_)
        (if (let () (declare (not safe)) (string? _idstr68433_))
            (let* ((_str68435_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr68433_)))
                   (_strs68437_
                    (let ()
                      (declare (not safe))
                      (string-split _str68435_ '#\/))))
              (let () (declare (not safe)) (string-join _strs68437_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr68433_))
                (let ((__tmp69907 (symbol->string _idstr68433_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp69907))
                (error '"Bad module id" _idstr68433_)))))
    (define gxc#invoke
      (lambda (_program68425_ _args68426_)
        (let ((__tmp69908
               (let ()
                 (declare (not safe))
                 (cons _program68425_ _args68426_))))
          (declare (not safe))
          (gxc#verbose '"invoke " __tmp69908))
        (let* ((_proc68428_
                (open-process
                 (let ((__tmp69909
                        (let ((__tmp69910
                               (let ((__tmp69911
                                      (let ((__tmp69912
                                             (let ((__tmp69913
                                                    (let ((__tmp69914
                                                           (let ((__tmp69915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons '#f '()))))
                     (declare (not safe))
                     (cons 'stderr-redirection: __tmp69915))))
              (declare (not safe))
              (cons '#f __tmp69914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'stdout-redirection:
                                                     __tmp69913))))
                                        (declare (not safe))
                                        (cons _args68426_ __tmp69912))))
                                 (declare (not safe))
                                 (cons 'arguments: __tmp69911))))
                          (declare (not safe))
                          (cons _program68425_ __tmp69910))))
                   (declare (not safe))
                   (cons 'path: __tmp69909))))
               (_status68430_ (process-status _proc68428_)))
          (close-port _proc68428_)
          (if (let () (declare (not safe)) (zero? _status68430_))
              '#!void
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Compilation error; process exit with nonzero status"
                 _program68425_))))))))
