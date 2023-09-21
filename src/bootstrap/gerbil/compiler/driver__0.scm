(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1695292411)
  (begin
    (define gxc#default-gerbil-gsc
      (let ((__tmp69300 (let () (declare (not safe)) (path-expand '"~~bin"))))
        (declare (not safe))
        (path-expand '"gsc" __tmp69300)))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+
      (let () (declare (not safe)) (make-mutex 'compiler/driver)))
    (define gxc#compile-timestamp
      (lambda ()
        (let ((__tmp69301
               (floor (let ((__tmp69302
                             (let () (declare (not safe)) (current-time))))
                        (declare (not safe))
                        (time->seconds __tmp69302)))))
          (declare (not safe))
          (inexact->exact __tmp69301))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp69303 (let () (declare (not safe)) (current-time))))
          (declare (not safe))
          (time->seconds __tmp69303))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_path69226_ _fun69227_)
        (let ((__tmp69304
               (let ((__tmp69305
                      (let ()
                        (declare (not safe))
                        (cons _path69226_ gxc#scheme-file-settings))))
                 (declare (not safe))
                 (cons 'path: __tmp69305))))
          (declare (not safe))
          (with-output-to-file __tmp69304 _fun69227_))))
    (define gxc#+gerbil-gsc+ '#f)
    (define gxc#gerbil-gsc
      (lambda ()
        (if gxc#+gerbil-gsc+
            '#!void
            (set! gxc#+gerbil-gsc+
                  (let ()
                    (declare (not safe))
                    (getenv '"GERBIL_GSC" gxc#default-gerbil-gsc))))
        gxc#+gerbil-gsc+))
    (define gxc#+gerbil-gcc+ '#f)
    (define gxc#gerbil-gcc
      (lambda ()
        (if gxc#+gerbil-gcc+
            '#!void
            (set! gxc#+gerbil-gcc+
                  (let ()
                    (declare (not safe))
                    (getenv '"GERBIL_GCC" gxc#default-gerbil-gcc))))
        gxc#+gerbil-gcc+))
    (define gxc#+gerbil-ar+ '#f)
    (define gxc#gerbil-ar
      (lambda ()
        (if gxc#+gerbil-ar+
            '#!void
            (set! gxc#+gerbil-ar+
                  (let ()
                    (declare (not safe))
                    (getenv '"GERBIL_AR" gxc#default-gerbil-ar))))
        gxc#+gerbil-ar+))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/system"
        "gerbil/runtime/loader"
        "gerbil/runtime/control"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir69221_) (delete-file-or-directory _dir69221_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath69195_ _opts69196_)
        (if (let () (declare (not safe)) (string? _srcpath69195_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath69195_)))
        (let ((_outdir69198_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts69196_)))
              (_invoke-gsc?69199_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts69196_)))
              (_gsc-options69200_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts69196_)))
              (_keep-scm?69201_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts69196_)))
              (_verbosity69202_
               (let () (declare (not safe)) (pgetq 'verbose: _opts69196_)))
              (_optimize69203_
               (let () (declare (not safe)) (pgetq 'optimize: _opts69196_)))
              (_debug69204_
               (let () (declare (not safe)) (pgetq 'debug: _opts69196_)))
              (_gen-ssxi69205_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts69196_))))
          (if _outdir69198_
              (let ((__tmp69306
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir69198_)))))
                (declare (not safe))
                (gerbil/gambit/threads#with-lock
                 gxc#+driver-mutex+
                 __tmp69306))
              '#!void)
          (if _optimize69203_
              (let ((__tmp69307
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (gerbil/gambit/threads#with-lock
                 gxc#+driver-mutex+
                 __tmp69307))
              '#!void)
          (let ((__tmp69309
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath69195_))
                   (let ((__tmp69310
                          (let ((__tmp69311
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath69195_)))))
                            (declare (not safe))
                            (gerbil/gambit/threads#with-lock
                             gxc#+driver-mutex+
                             __tmp69311))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp69310))))
                (__tmp69308
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp69309
             gxc#current-compile-output-dir
             _outdir69198_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?69199_
             gxc#current-compile-gsc-options
             _gsc-options69200_
             gxc#current-compile-keep-scm
             _keep-scm?69201_
             gxc#current-compile-verbose
             _verbosity69202_
             gxc#current-compile-optimize
             _optimize69203_
             gxc#current-compile-debug
             _debug69204_
             gxc#current-compile-generate-ssxi
             _gen-ssxi69205_
             gxc#current-compile-timestamp
             __tmp69308
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath69214_)
        (let ((_opts69216_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath69214_ _opts69216_))))
    (define gxc#compile-module
      (lambda _g69313_
        (let ((_g69312_ (let () (declare (not safe)) (##length _g69313_))))
          (cond ((let () (declare (not safe)) (##fx= _g69312_ 1))
                 (apply (lambda (_srcpath69214_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath69214_)))
                        _g69313_))
                ((let () (declare (not safe)) (##fx= _g69312_ 2))
                 (apply (lambda (_srcpath69218_ _opts69219_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath69218_
                             _opts69219_)))
                        _g69313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g69313_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath69172_ _opts69173_)
        (if (let () (declare (not safe)) (string? _srcpath69172_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath69172_)))
        (let ((_outdir69175_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts69173_)))
              (_invoke-gsc?69176_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts69173_)))
              (_gsc-options69177_
               (let () (declare (not safe)) (pgetq 'gsc-options: _opts69173_)))
              (_keep-scm?69178_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts69173_)))
              (_verbosity69179_
               (let () (declare (not safe)) (pgetq 'verbose: _opts69173_))))
          (if _outdir69175_
              (let ((__tmp69314
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir69175_)))))
                (declare (not safe))
                (gerbil/gambit/threads#with-lock
                 gxc#+driver-mutex+
                 __tmp69314))
              '#!void)
          (let ((__tmp69316
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath69172_))
                   (let ((__tmp69317
                          (let ((__tmp69318
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath69172_)))))
                            (declare (not safe))
                            (gerbil/gambit/threads#with-lock
                             gxc#+driver-mutex+
                             __tmp69318))))
                     (declare (not safe))
                     (gxc#compile-executable-module __tmp69317 _opts69173_))))
                (__tmp69315
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp69316
             gxc#current-compile-output-dir
             _outdir69175_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?69176_
             gxc#current-compile-gsc-options
             _gsc-options69177_
             gxc#current-compile-keep-scm
             _keep-scm?69178_
             gxc#current-compile-verbose
             _verbosity69179_
             gxc#current-compile-timestamp
             __tmp69315
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath69187_)
        (let ((_opts69189_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath69187_ _opts69189_))))
    (define gxc#compile-exe
      (lambda _g69320_
        (let ((_g69319_ (let () (declare (not safe)) (##length _g69320_))))
          (cond ((let () (declare (not safe)) (##fx= _g69319_ 1))
                 (apply (lambda (_srcpath69187_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath69187_)))
                        _g69320_))
                ((let () (declare (not safe)) (##fx= _g69319_ 2))
                 (apply (lambda (_srcpath69191_ _opts69192_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath69191_ _opts69192_)))
                        _g69320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g69320_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx69168_ _opts69169_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts69169_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx69168_
               _opts69169_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx69168_
               _opts69169_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx68816_ _opts68817_)
        (letrec ((_generate-stub68819_
                  (lambda (_builtin-modules69164_)
                    (let ((_mod-main69166_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx68816_ 'main))))
                      (let ((__tmp69321
                             (let ((__tmp69322
                                    (let ((__tmp69323
                                           (let ((__tmp69324
                                                  (let ((__tmp69325
                                                         (let ((__tmp69327
                                                                (let ((__tmp69328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules69164_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp69328)))
                       (__tmp69326
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp69327 __tmp69326))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp69325))))
                                             (declare (not safe))
                                             (cons __tmp69324 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp69323))))
                               (declare (not safe))
                               (cons 'define __tmp69322))))
                        (declare (not safe))
                        (write __tmp69321))
                      (let ((__tmp69329
                             (let ((__tmp69330
                                    (let ((__tmp69341
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp69331
                                           (let ((__tmp69339
                                                  (let ((__tmp69340
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'builtin-modules
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp69340)))
                                                 (__tmp69332
                                                  (let ((__tmp69333
                                                         (let ((__tmp69334
                                                                (let ((__tmp69335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69336
                                      (let ((__tmp69337
                                             (let ((__tmp69338
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp69338 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp69337))))
                                 (declare (not safe))
                                 (cons __tmp69336 '()))))
                          (declare (not safe))
                          (cons _mod-main69166_ __tmp69335))))
                   (declare (not safe))
                   (cons 'apply __tmp69334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69333 '()))))
                                             (declare (not safe))
                                             (cons __tmp69339 __tmp69332))))
                                      (declare (not safe))
                                      (cons __tmp69341 __tmp69331))))
                               (declare (not safe))
                               (cons 'define __tmp69330))))
                        (declare (not safe))
                        (write __tmp69329))
                      (let () (declare (not safe)) (write '(gerbil-main)))
                      (let () (declare (not safe)) (newline)))))
                 (_get-gsc-link-opts68820_
                  (lambda ()
                    (let ((_opts69074_
                           (let ()
                             (declare (not safe))
                             (pgetq 'gsc-options: _opts68817_))))
                      (let _lp69076_ ((_rest69078_ _opts69074_)
                                      (_opts69079_ '()))
                        (let* ((_rest6908069100_ _rest69078_)
                               (_else6908469108_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (reverse _opts69079_)))))
                          (let ((_K6909469151_
                                 (lambda (_rest69149_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69076_ _rest69149_ _opts69079_))))
                                (_K6908969133_
                                 (lambda (_rest69131_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69076_ _rest69131_ _opts69079_))))
                                (_K6908669115_
                                 (lambda (_rest69112_ _hd69113_)
                                   (let ((__tmp69342
                                          (let ()
                                            (declare (not safe))
                                            (cons _hd69113_ _opts69079_))))
                                     (declare (not safe))
                                     (_lp69076_ _rest69112_ __tmp69342)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6908069100_))
                                (let ((_tl6909669156_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6908069100_)))
                                      (_hd6909569154_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6908069100_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _hd6909569154_ '"-cc-options"))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6909669156_))
                                          (let* ((_tl6909869159_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _tl6909669156_)))
                                                 (_rest69162_ _tl6909869159_))
                                            (declare (not safe))
                                            (_K6909469151_ _rest69162_))
                                          (let ((_hd69123_ _hd6909569154_)
                                                (_rest69125_ _tl6909669156_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6908669115_
                                               _rest69125_
                                               _hd69123_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _hd6909569154_
                                                    '"-ld-options"))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl6909669156_))
                                              (let* ((_tl6909369141_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _tl6909669156_)))
                                                     (_rest69144_
                                                      _tl6909369141_))
                                                (declare (not safe))
                                                (_K6908969133_ _rest69144_))
                                              (let ((_hd69123_ _hd6909569154_)
                                                    (_rest69125_
                                                     _tl6909669156_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_K6908669115_
                                                   _rest69125_
                                                   _hd69123_))))
                                          (let ((_hd69123_ _hd6909569154_)
                                                (_rest69125_ _tl6909669156_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6908669115_
                                               _rest69125_
                                               _hd69123_))))))
                                (let ()
                                  (declare (not safe))
                                  (_else6908469108_)))))))))
                 (_get-gsc-cc-opts68821_
                  (lambda (_gerbil-staticdir68999_)
                    (let* ((_opts69001_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts68817_)))
                           (_base69003_
                            (string-append '"-I " _gerbil-staticdir68999_))
                           (_user-static-dir69005_
                            (let ((__tmp69343
                                   (let ((__tmp69344
                                          (let ()
                                            (declare (not safe))
                                            (getenv '"GERBIL_PATH"
                                                    '"~/.gerbil"))))
                                     (declare (not safe))
                                     (path-expand '"lib/static" __tmp69344))))
                              (declare (not safe))
                              (path-expand __tmp69343)))
                           (_base69007_
                            (string-append
                             _base69003_
                             '" -I "
                             _user-static-dir69005_)))
                      (let _lp69010_ ((_rest69012_ _opts69001_)
                                      (_ccflags69013_ _base69007_))
                        (let* ((_rest6901469028_ _rest69012_)
                               (_else6901769036_
                                (lambda ()
                                  (let ((__tmp69345
                                         (let ()
                                           (declare (not safe))
                                           (cons _ccflags69013_ '()))))
                                    (declare (not safe))
                                    (cons '"-cc-options" __tmp69345)))))
                          (let ((_K6902269056_
                                 (lambda (_rest69053_ _opts69054_)
                                   (let ((__tmp69346
                                          (string-append
                                           _ccflags69013_
                                           '" "
                                           _opts69054_)))
                                     (declare (not safe))
                                     (_lp69010_ _rest69053_ __tmp69346))))
                                (_K6901969042_
                                 (lambda (_rest69040_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp69010_ _rest69040_ _ccflags69013_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6901469028_))
                                (let ((_tl6902469061_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6901469028_)))
                                      (_hd6902369059_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6901469028_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _hd6902369059_ '"-cc-options"))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6902469061_))
                                          (let ((_tl6902669066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6902469061_)))
                                                (_hd6902569064_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6902469061_))))
                                            (let ((_opts69069_ _hd6902569064_)
                                                  (_rest69071_ _tl6902669066_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6902269056_
                                                 _rest69071_
                                                 _opts69069_))))
                                          (let ((_rest69048_ _tl6902469061_))
                                            (declare (not safe))
                                            (_K6901969042_ _rest69048_)))
                                      (let ((_rest69048_ _tl6902469061_))
                                        (declare (not safe))
                                        (_K6901969042_ _rest69048_))))
                                (let ()
                                  (declare (not safe))
                                  (_else6901769036_)))))))))
                 (_get-output-ld-opts68822_
                  (lambda ()
                    (let ((_opts68934_
                           (let ()
                             (declare (not safe))
                             (pgetq 'gsc-options: _opts68817_))))
                      (let _lp68936_ ((_rest68938_ _opts68934_)
                                      (_ldflags68939_ '""))
                        (let* ((_rest6894068954_ _rest68938_)
                               (_else6894368962_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (string-empty? _ldflags68939_))
                                      '()
                                      (filter _not-string-empty?68827_
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _ldflags68939_
                                                 '#\space)))))))
                          (let ((_K6894868982_
                                 (lambda (_rest68979_ _opts68980_)
                                   (let ((__tmp69347
                                          (string-append
                                           _ldflags68939_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (string-empty?
                                                  _ldflags68939_))
                                               '""
                                               '" ")
                                           _opts68980_)))
                                     (declare (not safe))
                                     (_lp68936_ _rest68979_ __tmp69347))))
                                (_K6894568968_
                                 (lambda (_rest68966_)
                                   (let ()
                                     (declare (not safe))
                                     (_lp68936_ _rest68966_ _ldflags68939_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6894068954_))
                                (let ((_tl6895068987_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6894068954_)))
                                      (_hd6894968985_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6894068954_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _hd6894968985_ '"-ld-options"))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6895068987_))
                                          (let ((_tl6895268992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6895068987_)))
                                                (_hd6895168990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6895068987_))))
                                            (let ((_opts68995_ _hd6895168990_)
                                                  (_rest68997_ _tl6895268992_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6894868982_
                                                 _rest68997_
                                                 _opts68995_))))
                                          (let ((_rest68974_ _tl6895068987_))
                                            (declare (not safe))
                                            (_K6894568968_ _rest68974_)))
                                      (let ((_rest68974_ _tl6895068987_))
                                        (declare (not safe))
                                        (_K6894568968_ _rest68974_))))
                                (let ()
                                  (declare (not safe))
                                  (_else6894368962_)))))))))
                 (_get-libgerbil-ld-opts68823_
                  (lambda (_libgerbil68931_)
                    (let ((__tmp69348
                           (string-append _libgerbil68931_ '".ldd")))
                      (declare (not safe))
                      (call-with-input-file __tmp69348 read))))
                 (_replace-extension68824_
                  (lambda (_path68928_ _ext68929_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (path-strip-extension _path68928_))
                     _ext68929_)))
                 (_not-exclude-module?68825_
                  (lambda (_ctx68924_)
                    (let ((_id-str68926_
                           (let ((__tmp69349
                                  (##structure-ref
                                   _ctx68924_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (symbol->string __tmp69349))))
                      (if (let ((__tmp69351
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"gerbil/" _id-str68926_))))
                            (declare (not safe))
                            (not __tmp69351))
                          (let ((__tmp69350
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str68926_))))
                            (declare (not safe))
                            (not __tmp69350))
                          '#f))))
                 (_not-file-empty?68826_
                  (lambda (_path68922_)
                    (let ((__tmp69352
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path68922_))))
                      (declare (not safe))
                      (not __tmp69352))))
                 (_not-string-empty?68827_
                  (lambda (_str68920_)
                    (let ((__tmp69353
                           (let ()
                             (declare (not safe))
                             (string-empty? _str68920_))))
                      (declare (not safe))
                      (not __tmp69353))))
                 (_compile-stub68828_
                  (lambda (_output-scm68835_ _output-bin68836_)
                    (let* ((_gerbil-home68838_
                            (let ((__tmp69354 (gerbil-home)))
                              (declare (not safe))
                              (getenv '"GERBIL_BUILD_PREFIX" __tmp69354)))
                           (_gerbil-libdir68840_
                            (let ()
                              (declare (not safe))
                              (path-expand '"lib" _gerbil-home68838_)))
                           (_gerbil-staticdir68842_
                            (let ()
                              (declare (not safe))
                              (path-expand '"static" _gerbil-libdir68840_)))
                           (_gxlink68844_
                            (let ()
                              (declare (not safe))
                              (path-expand
                               '"libgerbil-link"
                               _gerbil-libdir68840_)))
                           (_tmp68846_
                            (let ((__tmp69355
                                   (string-append
                                    '"gxc."
                                    (let ((__tmp69356
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (number->string __tmp69356)))))
                              (declare (not safe))
                              (path-expand __tmp69355 '"/tmp")))
                           (_tmp-path68850_
                            (lambda (_f68848_)
                              (let ((__tmp69357
                                     (let ()
                                       (declare (not safe))
                                       (path-strip-directory _f68848_))))
                                (declare (not safe))
                                (path-expand __tmp69357 _tmp68846_))))
                           (_deps68852_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx68816_)))
                           (_deps68854_
                            (filter _not-exclude-module?68825_ _deps68852_))
                           (_src-deps-scm68856_
                            (let ()
                              (declare (not safe))
                              (map gxc#find-static-module-file _deps68854_)))
                           (_src-deps-scm68858_
                            (filter _not-file-empty?68826_
                                    _src-deps-scm68856_))
                           (_src-deps-scm68860_
                            (let ()
                              (declare (not safe))
                              (map path-expand _src-deps-scm68858_)))
                           (_deps-scm68862_
                            (let ()
                              (declare (not safe))
                              (map _tmp-path68850_ _src-deps-scm68860_)))
                           (_deps-c68868_
                            (let ((__tmp69358
                                   (lambda (_g6886368865_)
                                     (let ()
                                       (declare (not safe))
                                       (_replace-extension68824_
                                        _g6886368865_
                                        '".c")))))
                              (declare (not safe))
                              (map __tmp69358 _deps-scm68862_)))
                           (_deps-o68874_
                            (let ((__tmp69359
                                   (lambda (_g6886968871_)
                                     (let ()
                                       (declare (not safe))
                                       (_replace-extension68824_
                                        _g6886968871_
                                        '".o")))))
                              (declare (not safe))
                              (map __tmp69359 _deps-scm68862_)))
                           (_src-bin-scm68876_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx68816_)))
                           (_src-bin-scm68878_
                            (let ()
                              (declare (not safe))
                              (path-expand _src-bin-scm68876_)))
                           (_bin-scm68880_
                            (let ()
                              (declare (not safe))
                              (_tmp-path68850_ _src-bin-scm68878_)))
                           (_bin-c68882_
                            (let ()
                              (declare (not safe))
                              (_replace-extension68824_ _bin-scm68880_ '".c")))
                           (_bin-o68884_
                            (let ()
                              (declare (not safe))
                              (_replace-extension68824_ _bin-scm68880_ '".o")))
                           (_output-bin68886_
                            (let ()
                              (declare (not safe))
                              (path-expand _output-bin68836_)))
                           (_output-scm68888_
                            (let ()
                              (declare (not safe))
                              (path-expand _output-scm68835_)))
                           (_output-c68890_
                            (let ()
                              (declare (not safe))
                              (_replace-extension68824_
                               _output-scm68888_
                               '".c")))
                           (_output-o68892_
                            (let ()
                              (declare (not safe))
                              (_replace-extension68824_
                               _output-scm68888_
                               '".o")))
                           (_output_68894_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (path-strip-extension _output-scm68888_))
                             '"_"))
                           (_output_-c68896_
                            (string-append _output_68894_ '".c"))
                           (_output_-o68898_
                            (string-append _output_68894_ '".o"))
                           (_gsc-opts68900_
                            (let ()
                              (declare (not safe))
                              (_get-gsc-link-opts68820_)))
                           (_gsc-cc-opts68902_
                            (let ()
                              (declare (not safe))
                              (_get-gsc-cc-opts68821_
                               _gerbil-staticdir68842_)))
                           (_output-ld-opts68904_
                            (let ()
                              (declare (not safe))
                              (_get-output-ld-opts68822_)))
                           (_libgerbil.a68906_
                            (let ()
                              (declare (not safe))
                              (path-expand
                               '"libgerbil.a"
                               _gerbil-libdir68840_)))
                           (_libgerbil.so68908_
                            (let ()
                              (declare (not safe))
                              (path-expand
                               '"libgerbil.so"
                               _gerbil-libdir68840_)))
                           (_libgerbil-ld-opts68910_
                            (if (let ()
                                  (declare (not safe))
                                  (file-exists? _libgerbil.so68908_))
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts68823_
                                   _libgerbil.so68908_))
                                (if (let ()
                                      (declare (not safe))
                                      (file-exists? _libgerbil.a68906_))
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts68823_
                                       _libgerbil.a68906_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a68906_
                                       _libgerbil.so68908_)))))
                           (_gerbil-rpath68912_
                            (string-append
                             '"-Wl,-rpath="
                             _gerbil-libdir68840_))
                           (_builtin-modules68916_
                            (let ((__tmp69361
                                   (lambda (_mod68914_)
                                     (let ((__tmp69362
                                            (##structure-ref
                                             _mod68914_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (symbol->string __tmp69362))))
                                  (__tmp69360
                                   (let ()
                                     (declare (not safe))
                                     (cons _ctx68816_ _deps68854_))))
                              (declare (not safe))
                              (map __tmp69361 __tmp69360))))
                      (let ((__tmp69363
                             (let ()
                               (declare (not safe))
                               (path-directory _output-bin68886_))))
                        (declare (not safe))
                        (create-directory* __tmp69363))
                      (let ((__tmp69364
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub68819_
                                  _builtin-modules68916_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm68888_
                         __tmp69364))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ()
                              (declare (not safe))
                              (create-directory _tmp68846_))
                            (let ()
                              (declare (not safe))
                              (for-each
                               copy-file
                               _src-deps-scm68860_
                               _deps-scm68862_))
                            (let ()
                              (declare (not safe))
                              (copy-file _src-bin-scm68878_ _bin-scm68880_))
                            (let ((__tmp69374
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp69365
                                   (let ((__tmp69366
                                          (let ((__tmp69367
                                                 (let ((__tmp69368
                                                        (let ((__tmp69370
                                                               (let ((__tmp69371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69372
                                     (let ((__tmp69373
                                            (let ()
                                              (declare (not safe))
                                              (cons _output-scm68888_ '()))))
                                       (declare (not safe))
                                       (cons _bin-scm68880_ __tmp69373))))
                                (declare (not safe))
                                (foldr1 cons __tmp69372 _deps-scm68862_))))
                         (declare (not safe))
                         (foldr1 cons __tmp69371 _gsc-opts68900_)))
                      (__tmp69369
                       (let ()
                         (declare (not safe))
                         (gxc#gsc-debug-options__0))))
                  (declare (not safe))
                  (foldr1 cons __tmp69370 __tmp69369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink68844_
                                                         __tmp69368))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp69367))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp69366))))
                              (declare (not safe))
                              (gxc#invoke __tmp69374 __tmp69365))
                            (let ((__tmp69381
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp69375
                                   (let ((__tmp69376
                                          (let ((__tmp69377
                                                 (let ((__tmp69378
                                                        (let ((__tmp69379
                                                               (let ((__tmp69380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _output_-c68896_ '()))))
                         (declare (not safe))
                         (cons _output-c68890_ __tmp69380))))
                  (declare (not safe))
                  (cons _bin-c68882_ __tmp69379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp69378
                                                           _deps-c68868_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp69377
                                                    _gsc-cc-opts68902_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp69376))))
                              (declare (not safe))
                              (gxc#invoke __tmp69381 __tmp69375))
                            (let ((__tmp69394
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp69382
                                   (let ((__tmp69383
                                          (let ((__tmp69384
                                                 (let ((__tmp69385
                                                        (let ((__tmp69386
                                                               (let ((__tmp69387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp69388
                                     (let ((__tmp69389
                                            (let ((__tmp69390
                                                   (let ((__tmp69391
                                                          (let ((__tmp69392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69393
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts68910_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp69393))))
                    (declare (not safe))
                    (cons _gerbil-libdir68840_ __tmp69392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L" __tmp69391))))
                                              (declare (not safe))
                                              (cons _gerbil-rpath68912_
                                                    __tmp69390))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp69389
                                               _output-ld-opts68904_))))
                                (declare (not safe))
                                (cons _output_-o68898_ __tmp69388))))
                         (declare (not safe))
                         (cons _output-o68892_ __tmp69387))))
                  (declare (not safe))
                  (cons _bin-o68884_ __tmp69386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp69385
                                                           _deps-o68874_))))
                                            (declare (not safe))
                                            (cons _output-bin68886_
                                                  __tmp69384))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp69383))))
                              (declare (not safe))
                              (gxc#invoke __tmp69394 __tmp69382))
                            (let ((__tmp69395
                                   (let ((__tmp69396
                                          (let ((__tmp69397
                                                 (let ((__tmp69398
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _output_-o68898_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _output-o68892_
                                                         __tmp69398))))
                                            (declare (not safe))
                                            (cons _output_-c68896_
                                                  __tmp69397))))
                                     (declare (not safe))
                                     (cons _output-c68890_ __tmp69396))))
                              (declare (not safe))
                              (for-each delete-file __tmp69395))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp68846_)))
                          '#!void)))))
          (let* ((_output-bin68830_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx68816_ _opts68817_)))
                 (_output-scm68832_
                  (string-append _output-bin68830_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub68828_ _output-scm68832_ _output-bin68830_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (let ()
                  (declare (not safe))
                  (delete-file _output-scm68832_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx68651_ _opts68652_)
        (letrec ((_reset-declare68654_
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
                 (_generate-stub68655_
                  (lambda (_deps68807_)
                    (let ((_mod-main68809_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx68651_ 'main)))
                          (_reset-decl68810_
                           (let ()
                             (declare (not safe))
                             (_reset-declare68654_)))
                          (_user-decl68811_
                           (let ()
                             (declare (not safe))
                             (_user-declare68657_))))
                      (let ((__tmp69399
                             (lambda (_dep68813_)
                               (let ()
                                 (declare (not safe))
                                 (write '(##namespace (""))))
                               (let () (declare (not safe)) (newline))
                               (let ()
                                 (declare (not safe))
                                 (write _reset-decl68810_))
                               (let () (declare (not safe)) (newline))
                               (if _user-decl68811_
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (write _user-decl68811_))
                                     (let () (declare (not safe)) (newline)))
                                   '#!void)
                               (let ((__tmp69400
                                      (let ((__tmp69401
                                             (let ()
                                               (declare (not safe))
                                               (cons _dep68813_ '()))))
                                        (declare (not safe))
                                        (cons 'include __tmp69401))))
                                 (declare (not safe))
                                 (write __tmp69400))
                               (let () (declare (not safe)) (newline)))))
                        (declare (not safe))
                        (for-each __tmp69399 _deps68807_))
                      (let ((__tmp69402
                             (let ((__tmp69403
                                    (let ((__tmp69416
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp69404
                                           (let ((__tmp69412
                                                  (let ((__tmp69413
                                                         (let ((__tmp69414
                                                                (let ((__tmp69415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp69415))))
                   (declare (not safe))
                   (cons __tmp69414 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp69413)))
                                                 (__tmp69405
                                                  (let ((__tmp69406
                                                         (let ((__tmp69407
                                                                (let ((__tmp69408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp69409
                                      (let ((__tmp69410
                                             (let ((__tmp69411
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp69411 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp69410))))
                                 (declare (not safe))
                                 (cons __tmp69409 '()))))
                          (declare (not safe))
                          (cons _mod-main68809_ __tmp69408))))
                   (declare (not safe))
                   (cons 'apply __tmp69407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp69406 '()))))
                                             (declare (not safe))
                                             (cons __tmp69412 __tmp69405))))
                                      (declare (not safe))
                                      (cons __tmp69416 __tmp69404))))
                               (declare (not safe))
                               (cons 'define __tmp69403))))
                        (declare (not safe))
                        (write __tmp69402))
                      (let () (declare (not safe)) (write '(gerbil-main)))
                      (let () (declare (not safe)) (newline)))))
                 (_static-include68656_
                  (lambda (_gsc-opts68800_ _home68801_)
                    (letrec* ((_static-dir68803_
                               (let ()
                                 (declare (not safe))
                                 (path-expand '"lib/static" _home68801_)))
                              (_user-static-dir68804_
                               (let ((__tmp69417
                                      (let ((__tmp69418
                                             (let ()
                                               (declare (not safe))
                                               (getenv '"GERBIL_PATH"
                                                       '"~/.gerbil"))))
                                        (declare (not safe))
                                        (path-expand
                                         '"lib/static"
                                         __tmp69418))))
                                 (declare (not safe))
                                 (path-expand __tmp69417)))
                              (_cppflags68805_
                               (string-append
                                '"-I "
                                _static-dir68803_
                                '" -I "
                                _user-static-dir68804_)))
                      (append _gsc-opts68800_
                              (let ((__tmp69419
                                     (let ()
                                       (declare (not safe))
                                       (cons _cppflags68805_ '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp69419))))))
                 (_user-declare68657_
                  (lambda ()
                    (let* ((_gsc-opts68705_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts68652_)))
                           (_gsc-prelude68707_
                            (if _gsc-opts68705_
                                (let ()
                                  (declare (not safe))
                                  (member '"-prelude" _gsc-opts68705_))
                                '#f))
                           (_gsc-prelude68709_
                            (if _gsc-prelude68707_
                                (let ((__tmp69420
                                       (let ((__tmp69421
                                              (let ()
                                                (declare (not safe))
                                                (cadr _gsc-prelude68707_))))
                                         (declare (not safe))
                                         (open-input-string __tmp69421))))
                                  (declare (not safe))
                                  (read __tmp69420))
                                '#f)))
                      (let _lp68712_ ((_rest68714_
                                       (let ()
                                         (declare (not safe))
                                         (cons _gsc-prelude68709_ '())))
                                      (_user-decls68715_ '()))
                        (let* ((_rest6871668724_ _rest68714_)
                               (_else6871868732_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls68715_))
                                      '#f
                                      (let ((__tmp69422
                                             (let ()
                                               (declare (not safe))
                                               (reverse _user-decls68715_))))
                                        (declare (not safe))
                                        (cons 'declare __tmp69422)))))
                               (_K6872068788_
                                (lambda (_rest68735_ _expr68736_)
                                  (let* ((_expr6873768749_ _expr68736_)
                                         (_else6874068757_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp68712_
                                               _rest68735_
                                               _user-decls68715_)))))
                                    (let ((_K6874568778_
                                           (lambda (_decls68776_)
                                             (let ((__tmp69423
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls68715_
                                                              _decls68776_))))
                                               (declare (not safe))
                                               (_lp68712_
                                                _rest68735_
                                                __tmp69423))))
                                          (_K6874268763_
                                           (lambda (_exprs68761_)
                                             (let ((__tmp69424
                                                    (append _exprs68761_
                                                            _rest68735_)))
                                               (declare (not safe))
                                               (_lp68712_
                                                __tmp69424
                                                _user-decls68715_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr6873768749_))
                                          (let ((_tl6874768783_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr6873768749_)))
                                                (_hd6874668781_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr6873768749_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd6874668781_
                                                         'declare))
                                                (let ((_decls68786_
                                                       _tl6874768783_))
                                                  (declare (not safe))
                                                  (_K6874568778_ _decls68786_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd6874668781_
                                                             'begin))
                                                    (let ((_exprs68771_
                                                           _tl6874768783_))
                                                      (declare (not safe))
                                                      (_K6874268763_
                                                       _exprs68771_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else6874068757_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else6874068757_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6871668724_))
                              (let ((_hd6872168791_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6871668724_)))
                                    (_tl6872268793_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6871668724_))))
                                (let* ((_expr68796_ _hd6872168791_)
                                       (_rest68798_ _tl6872268793_))
                                  (declare (not safe))
                                  (_K6872068788_ _rest68798_ _expr68796_)))
                              (let ()
                                (declare (not safe))
                                (_else6871868732_))))))))
                 (_compile-stub68658_
                  (lambda (_output-scm68665_ _output-bin68666_)
                    (let* ((_gerbil-home68668_
                            (let ((__tmp69425 (gerbil-home)))
                              (declare (not safe))
                              (getenv '"GERBIL_BUILD_PREFIX" __tmp69425)))
                           (_runtime68670_
                            (let ()
                              (declare (not safe))
                              (map gxc#find-static-module-file
                                   gxc#gerbil-runtime-modules)))
                           (_gambit-sharp68672_
                            (let ()
                              (declare (not safe))
                              (path-expand
                               '"lib/_gambit#.scm"
                               _gerbil-home68668_)))
                           (_include-gambit-sharp68674_
                            (string-append
                             '"(include \""
                             _gambit-sharp68672_
                             '"\")"))
                           (_bin-scm68676_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx68651_)))
                           (_deps68678_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx68651_)))
                           (_deps68680_
                            (let ()
                              (declare (not safe))
                              (map gxc#find-static-module-file _deps68678_)))
                           (_deps68685_
                            (filter (lambda (_$obj68682_)
                                      (let ((__tmp69426
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty? _$obj68682_))))
                                        (declare (not safe))
                                        (not __tmp69426)))
                                    _deps68680_))
                           (_deps68689_
                            (filter (lambda (_f68687_)
                                      (let ((__tmp69427
                                             (let ()
                                               (declare (not safe))
                                               (member _f68687_
                                                       _runtime68670_))))
                                        (declare (not safe))
                                        (not __tmp69427)))
                                    _deps68685_))
                           (_gsc-opts68694_
                            (let ((_$e68691_
                                   (let ()
                                     (declare (not safe))
                                     (pgetq 'gsc-options: _opts68652_))))
                              (if _$e68691_ _$e68691_ '())))
                           (_gsc-opts68696_
                            (let ()
                              (declare (not safe))
                              (_static-include68656_
                               _gsc-opts68694_
                               _gerbil-home68668_)))
                           (_gsc-gx-macros68698_
                            (if (gerbil-runtime-smp?)
                                (let ((__tmp69429
                                       (let ((__tmp69430
                                              (let ((__tmp69431
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp68674_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp69431))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp69430))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp69429))
                                (let ((__tmp69428
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp68674_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp69428))))
                           (_gsc-args68700_
                            (let ((__tmp69432
                                   (let ((__tmp69433
                                          (let ((__tmp69434
                                                 (let ((__tmp69436
                                                        (let ((__tmp69437
                                                               (let ((__tmp69438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _output-scm68665_ '()))))
                         (declare (not safe))
                         (foldr1 cons __tmp69438 _gsc-gx-macros68698_))))
                  (declare (not safe))
                  (foldr1 cons __tmp69437 _gsc-opts68696_)))
               (__tmp69435
                (let () (declare (not safe)) (gxc#gsc-debug-options__0))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp69436
                                                           __tmp69435))))
                                            (declare (not safe))
                                            (cons _output-bin68666_
                                                  __tmp69434))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp69433))))
                              (declare (not safe))
                              (cons '"-exe" __tmp69432))))
                      (let ((__tmp69439
                             (let ()
                               (declare (not safe))
                               (path-directory _output-bin68666_))))
                        (declare (not safe))
                        (create-directory* __tmp69439))
                      (let ((__tmp69440
                             (lambda ()
                               (let ((__tmp69441
                                      (let ((__tmp69442
                                             (let ((__tmp69443
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm68676_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp69443
                                                       _deps68689_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp69442
                                                _runtime68670_))))
                                 (declare (not safe))
                                 (_generate-stub68655_ __tmp69441)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm68665_
                         __tmp69440))
                      (if (gxc#current-compile-invoke-gsc)
                          (let ((__tmp69444
                                 (let ()
                                   (declare (not safe))
                                   (gxc#gerbil-gsc))))
                            (declare (not safe))
                            (gxc#invoke __tmp69444 _gsc-args68700_))
                          '#!void)))))
          (let* ((_output-bin68660_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx68651_ _opts68652_)))
                 (_output-scm68662_
                  (string-append _output-bin68660_ '".scmx")))
            (let ()
              (declare (not safe))
              (_compile-stub68658_ _output-scm68662_ _output-bin68660_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (let ()
                  (declare (not safe))
                  (delete-file _output-scm68662_)))))))
    (define gxc#find-export-binding
      (lambda (_ctx68601_ _id68602_)
        (let ((_$e68648_
               (let ((__tmp69446
                      (lambda (_e6860368605_)
                        (let* ((_g6860768617_ _e6860368605_)
                               (_else6860968625_ (lambda () '#f))
                               (_K6861168629_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g6860768617_
                                 'gx#module-export::t))
                              (let* ((_e6861268632_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6860768617_ '1)))
                                     (_e6861368635_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6860768617_ '2)))
                                     (_e6861468638_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref _g6860768617_ '3))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e6861468638_ '0))
                                    (let ((_e6861568641_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g6860768617_ '4))))
                                      (if ((lambda (_g6864368645_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g6864368645_ _id68602_)))
                                           _e6861568641_)
                                          (let ()
                                            (declare (not safe))
                                            (_K6861168629_))
                                          (let ()
                                            (declare (not safe))
                                            (_else6860968625_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else6860968625_))))
                              (let ()
                                (declare (not safe))
                                (_else6860968625_))))))
                     (__tmp69445
                      (##structure-ref
                       _ctx68601_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp69446 __tmp69445))))
          (if _$e68648_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e68648_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx68593_ _id68594_)
        (let ((_$e68596_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx68593_ _id68594_))))
          (if _$e68596_
              ((lambda (_bind68599_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind68599_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id68594_)))
                 (##structure-ref _bind68599_ '1 gx#binding::t '#f))
               _$e68596_)
              (let ((__tmp69447
                     (##structure-ref
                      _ctx68593_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp69447
                 _id68594_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx68480_)
        (letrec* ((_ht68482_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template68483_
                   (lambda (_in68545_ _phi68546_)
                     (let ((_iphi68548_
                            (fx+ _phi68546_
                                 (##direct-structure-ref
                                  _in68545_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports68549_
                            (##structure-ref
                             (##direct-structure-ref
                              _in68545_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp68551_ ((_rest68553_ _imports68549_)
                                       (_r68554_ '()))
                         (let* ((_rest6855568563_ _rest68553_)
                                (_else6855768571_ (lambda () _r68554_))
                                (_K6855968581_
                                 (lambda (_rest68574_ _in68575_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in68575_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi68548_))
                                           (let ((__tmp69454
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in68575_
                                                          _r68554_))))
                                             (declare (not safe))
                                             (_lp68551_
                                              _rest68574_
                                              __tmp69454))
                                           (let ()
                                             (declare (not safe))
                                             (_lp68551_ _rest68574_ _r68554_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in68575_
                                              'gx#module-import::t))
                                           (let ((_iphi68577_
                                                  (fx+ _phi68546_
                                                       (##direct-structure-ref
                                                        _in68575_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi68577_))
                                                 (let ((__tmp69452
                                                        (let ((__tmp69453
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in68575_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp69453 _r68554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp68551_
                                                    _rest68574_
                                                    __tmp69452))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp68551_
                                                    _rest68574_
                                                    _r68554_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in68575_
                                                  'gx#import-set::t))
                                               (let ((_xphi68579_
                                                      (fx+ _iphi68548_
                                                           (##direct-structure-ref
                                                            _in68575_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi68579_))
                                                     (let ((__tmp69450
                                                            (let ((__tmp69451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in68575_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp69451 _r68554_))))
               (declare (not safe))
               (_lp68551_ _rest68574_ __tmp69450))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (fxpositive?
                                                            _xphi68579_))
                                                         (let ((__tmp69448
                                                                (let ((__tmp69449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template68483_
                                  _in68575_
                                  _iphi68548_))))
                          (declare (not safe))
                          (foldl1 cons _r68554_ __tmp69449))))
                   (declare (not safe))
                   (_lp68551_ _rest68574_ __tmp69448))
                 (let ()
                   (declare (not safe))
                   (_lp68551_ _rest68574_ _r68554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp68551_
                                                  _rest68574_
                                                  _r68554_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest6855568563_))
                               (let ((_hd6856068584_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest6855568563_)))
                                     (_tl6856168586_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest6855568563_))))
                                 (let* ((_in68589_ _hd6856068584_)
                                        (_rest68591_ _tl6856168586_))
                                   (declare (not safe))
                                   (_K6855968581_ _rest68591_ _in68589_)))
                               (let ()
                                 (declare (not safe))
                                 (_else6855768571_))))))))
                  (_find-deps68484_
                   (lambda (_rest68491_ _deps68492_)
                     (let* ((_rest6849368501_ _rest68491_)
                            (_else6849568509_ (lambda () _deps68492_))
                            (_K6849768533_
                             (lambda (_rest68512_ _hd68513_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd68513_
                                      'gx#module-context::t))
                                   (let ((_id68515_
                                          (##structure-ref
                                           _hd68513_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports68516_
                                          (##structure-ref
                                           _hd68513_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref _ht68482_ _id68515_ '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps68484_
                                            _rest68512_
                                            _deps68492_))
                                         (let ((_$e68518_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd68513_))))
                                           (if _$e68518_
                                               ((lambda (_pre68521_)
                                                  (let ((_xdeps68523_
                                                         (let ((__tmp69468
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre68521_ _imports68516_))))
                   (declare (not safe))
                   (_find-deps68484_ __tmp69468 _deps68492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht68482_
                                                       _id68515_
                                                       _hd68513_))
                                                    (let ((__tmp69469
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd68513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps68523_))))
              (declare (not safe))
              (_find-deps68484_ _rest68512_ __tmp69469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e68518_)
                                               (let ((_xdeps68525_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps68484_
                                                         _imports68516_
                                                         _deps68492_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht68482_
                                                    _id68515_
                                                    _hd68513_))
                                                 (let ((__tmp69467
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd68513_
                                                                _xdeps68525_))))
                                                   (declare (not safe))
                                                   (_find-deps68484_
                                                    _rest68512_
                                                    __tmp69467)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd68513_
                                          'gx#prelude-context::t))
                                       (let ((_id68527_
                                              (##structure-ref
                                               _hd68513_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht68482_
                                                _id68527_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps68484_
                                                _rest68512_
                                                _deps68492_))
                                             (let ((_xdeps68529_
                                                    (let ((__tmp69465
                                                           (##structure-ref
                                                            _hd68513_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps68484_
                                                       __tmp69465
                                                       _deps68492_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht68482_
                                                      _id68527_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps68484_
                                                      _rest68512_
                                                      _xdeps68529_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht68482_
                                                        _id68527_
                                                        _hd68513_))
                                                     (let ((__tmp69466
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd68513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps68529_))))
               (declare (not safe))
               (_find-deps68484_ _rest68512_ __tmp69466)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd68513_
                                              'gx#module-import::t))
                                           (if (let ((__tmp69464
                                                      (##direct-structure-ref
                                                       _hd68513_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp69464))
                                               (let ((__tmp69462
                                                      (let ((__tmp69463
                                                             (##direct-structure-ref
                                                              _hd68513_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp69463
                                                              _rest68512_))))
                                                 (declare (not safe))
                                                 (_find-deps68484_
                                                  __tmp69462
                                                  _deps68492_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps68484_
                                                  _rest68512_
                                                  _deps68492_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd68513_
                                                  'gx#module-export::t))
                                               (let ((__tmp69460
                                                      (let ((__tmp69461
                                                             (##direct-structure-ref
                                                              _hd68513_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp69461
                                                              _rest68512_))))
                                                 (declare (not safe))
                                                 (_find-deps68484_
                                                  __tmp69460
                                                  _deps68492_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd68513_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp69459
                                                              (##direct-structure-ref
                                                               _hd68513_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp69459))
                                                       (let ((__tmp69457
                                                              (let ((__tmp69458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd68513_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp69458 _rest68512_))))
                 (declare (not safe))
                 (_find-deps68484_ __tmp69457 _deps68492_))
               (if (let ((__tmp69456
                          (##direct-structure-ref
                           _hd68513_
                           '2
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (fxpositive? __tmp69456))
                   (let* ((_xdeps68531_
                           (let ()
                             (declare (not safe))
                             (_import-set-template68483_ _hd68513_ '0)))
                          (__tmp69455
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest68512_ _xdeps68531_))))
                     (declare (not safe))
                     (_find-deps68484_ __tmp69455 _deps68492_))
                   (let ()
                     (declare (not safe))
                     (_find-deps68484_ _rest68512_ _deps68492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd68513_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest6849368501_))
                           (let ((_hd6849868536_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest6849368501_)))
                                 (_tl6849968538_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest6849368501_))))
                             (let* ((_hd68541_ _hd6849868536_)
                                    (_rest68543_ _tl6849968538_))
                               (declare (not safe))
                               (_K6849768533_ _rest68543_ _hd68541_)))
                           (let ()
                             (declare (not safe))
                             (_else6849568509_)))))))
          (let ((__tmp69470
                 (filter gx#expander-context-id
                         (let ((__tmp69471
                                (let ((_$e68486_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _ctx68480_))))
                                  (if _$e68486_
                                      ((lambda (_pre68489_)
                                         (let ((__tmp69472
                                                (##structure-ref
                                                 _ctx68480_
                                                 '8
                                                 gx#module-context::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons _pre68489_ __tmp69472)))
                                       _$e68486_)
                                      (##structure-ref
                                       _ctx68480_
                                       '8
                                       gx#module-context::t
                                       '#f)))))
                           (declare (not safe))
                           (_find-deps68484_ __tmp69471 '())))))
            (declare (not safe))
            (reverse __tmp69470)))))
    (define gxc#find-static-module-file
      (lambda (_ctx68417_)
        (let* ((_context-id68419_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx68417_
                       'gx#module-context::t))
                    (##structure-ref _ctx68417_ '1 gx#expander-context::t '#f)
                    (let () (declare (not safe)) (string->symbol _ctx68417_))))
               (_scm68421_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id68419_))
                 '".scm"))
               (_dirs68423_ (gx#current-expander-module-library-path))
               (_dirs68432_
                (let ((_$e68425_ (gxc#current-compile-output-dir)))
                  (if _$e68425_
                      ((lambda (_g6842768429_)
                         (let ()
                           (declare (not safe))
                           (cons _g6842768429_ _dirs68423_)))
                       _$e68425_)
                      _dirs68423_)))
               (_dirs68438_
                (let ((__tmp69473
                       (lambda (_g6843368435_)
                         (let ()
                           (declare (not safe))
                           (path-expand '"static" _g6843368435_)))))
                  (declare (not safe))
                  (map __tmp69473 _dirs68432_))))
          (let _lp68441_ ((_rest68443_ _dirs68438_))
            (let* ((_rest6844468452_ _rest68443_)
                   (_else6844668460_
                    (lambda ()
                      (let ((__tmp69474
                             (##structure-ref
                              _ctx68417_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp69474
                         _scm68421_))))
                   (_K6844868468_
                    (lambda (_rest68463_ _dir68464_)
                      (let ((_path68466_
                             (let ()
                               (declare (not safe))
                               (path-expand _scm68421_ _dir68464_))))
                        (if (let ()
                              (declare (not safe))
                              (file-exists? _path68466_))
                            _path68466_
                            (let ()
                              (declare (not safe))
                              (_lp68441_ _rest68463_)))))))
              (if (let () (declare (not safe)) (##pair? _rest6844468452_))
                  (let ((_hd6844968471_
                         (let ()
                           (declare (not safe))
                           (##car _rest6844468452_)))
                        (_tl6845068473_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6844468452_))))
                    (let* ((_dir68476_ _hd6844968471_)
                           (_rest68478_ _tl6845068473_))
                      (declare (not safe))
                      (_K6844868468_ _rest68478_ _dir68476_)))
                  (let () (declare (not safe)) (_else6844668460_))))))))
    (define gxc#file-empty?
      (lambda (_path68415_)
        (let ((__tmp69475
               (let ((__tmp69476
                      (let ()
                        (declare (not safe))
                        (file-info _path68415_ '#t))))
                 (declare (not safe))
                 (file-info-size __tmp69476))))
          (declare (not safe))
          (zero? __tmp69475))))
    (define gxc#compile-top-module
      (lambda (_ctx68411_)
        (let ((__tmp69480
               (lambda ()
                 (let ((__tmp69481
                        (##structure-ref
                         _ctx68411_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp69481))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp69482
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx68411_)))))
                       (declare (not safe))
                       (gerbil/gambit/threads#with-lock
                        gxc#+driver-mutex+
                        __tmp69482))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx68411_))
                 (let ()
                   (declare (not safe))
                   (gxc#compile-runtime-code _ctx68411_))
                 (let ()
                   (declare (not safe))
                   (gxc#compile-meta-code _ctx68411_))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx68411_))
                     '#!void)))
              (__tmp69479
               (let ((__obj69298 (make-object gxc#symbol-table::t '2)))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj69298))
                 __obj69298))
              (__tmp69478
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp69477 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp69480
           gx#current-expander-context
           _ctx68411_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp69479
           gxc#current-compile-runtime-sections
           __tmp69478
           gxc#current-compile-runtime-names
           __tmp69477))))
    (define gxc#collect-bindings
      (lambda (_ctx68409_)
        (let ((__tmp69483
               (##structure-ref _ctx68409_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp69483))))
    (define gxc#compile-runtime-code
      (lambda (_ctx68355_)
        (letrec ((_compile168357_
                  (lambda (_ctx68398_)
                    (let* ((_code68400_
                            (##structure-ref
                             _ctx68398_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt68404_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code68400_))
                                (let ((_idstr68402_
                                       (let ((__tmp69484
                                              (##structure-ref
                                               _ctx68398_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp69484))))
                                  (string-append _idstr68402_ '"__0"))
                                '#f)))
                      (if _rt68404_
                          (begin
                            (let ((__tmp69485
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp69485 _ctx68398_ _rt68404_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code68359_
                               _ctx68398_
                               _code68400_)))
                          (let ((_path68407_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx68398_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file _path68407_ void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code68360_
                         _ctx68398_
                         _code68400_
                         _rt68404_)))))
                 (_context-timestamp68358_
                  (lambda (_ctx68396_)
                    (let ((__tmp69486
                           (string-append
                            (let ((__tmp69487
                                   (##structure-ref
                                    _ctx68396_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (symbol->string __tmp69487))
                            '"::timestamp")))
                      (declare (not safe))
                      (string->symbol __tmp69486))))
                 (_generate-runtime-code68359_
                  (lambda (_ctx68378_ _code68379_)
                    (let* ((_lifts68381_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code68384_
                            (let ((__tmp69490
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code68379_))))
                                  (__tmp69489
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp69488
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp69490
                               gx#current-expander-context
                               _ctx68378_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts68381_
                               gxc#current-compile-marks
                               __tmp69489
                               gxc#current-compile-identifiers
                               __tmp69488)))
                           (_runtime-code68386_
                            (if (let ((__tmp69495
                                       (let ()
                                         (declare (not safe))
                                         (unbox _lifts68381_))))
                                  (declare (not safe))
                                  (null? __tmp69495))
                                _runtime-code68384_
                                (let ((__tmp69491
                                       (let ((__tmp69494
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code68384_
                                                      '())))
                                             (__tmp69492
                                              (let ((__tmp69493
                                                     (let ()
                                                       (declare (not safe))
                                                       (unbox _lifts68381_))))
                                                (declare (not safe))
                                                (reverse __tmp69493))))
                                         (declare (not safe))
                                         (foldr1 cons __tmp69494 __tmp69492))))
                                  (declare (not safe))
                                  (cons 'begin __tmp69491))))
                           (_runtime-code68388_
                            (let ((__tmp69496
                                   (let ((__tmp69498
                                          (let ((__tmp69499
                                                 (let ((__tmp69502
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp68358_
                                                           _ctx68378_)))
                                                       (__tmp69500
                                                        (let ((__tmp69501
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp69501
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp69502
                                                         __tmp69500))))
                                            (declare (not safe))
                                            (cons 'define __tmp69499)))
                                         (__tmp69497
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code68386_ '()))))
                                     (declare (not safe))
                                     (cons __tmp69498 __tmp69497))))
                              (declare (not safe))
                              (cons 'begin __tmp69496)))
                           (_scm068390_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx68378_
                               '0
                               '".scm"))))
                      (let ((_scms68393_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx68378_))))
                        (let ((__tmp69503
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm068390_
                                    _runtime-code68388_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp69503
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (let ()
                              (declare (not safe))
                              (file-exists? _scms68393_))
                            (let ()
                              (declare (not safe))
                              (delete-file _scms68393_))
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm068390_
                           '" => "
                           _scms68393_))
                        (let ()
                          (declare (not safe))
                          (copy-file _scm068390_ _scms68393_))
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (let ()
                              (declare (not safe))
                              (delete-file _scm068390_)))))))
                 (_generate-loader-code68360_
                  (lambda (_ctx68367_ _code68368_ _rt68369_)
                    (let* ((_loader-code68372_
                            (let ((__tmp69504
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code68368_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp69504
                               gx#current-expander-context
                               _ctx68367_)))
                           (_loader-code68374_
                            (if _rt68369_
                                (let ((__tmp69505
                                       (let ((__tmp69506
                                              (let ((__tmp69507
                                                     (let ((__tmp69508
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt68369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp69508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp69507 '()))))
                                         (declare (not safe))
                                         (cons _loader-code68372_
                                               __tmp69506))))
                                  (declare (not safe))
                                  (cons 'begin __tmp69505))
                                _loader-code68372_)))
                      (let ((__tmp69509
                             (lambda ()
                               (let ((__tmp69510
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx68367_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp69510
                                  _loader-code68374_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp69509
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let* ((_all-modules68362_
                  (let ((__tmp69511
                         (let ()
                           (declare (not safe))
                           (gxc#lift-nested-modules _ctx68355_))))
                    (declare (not safe))
                    (cons _ctx68355_ __tmp69511)))
                 (__tmp69512
                  (lambda (_ctx68364_)
                    (let ((__tmp69513
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_compile168357_ _ctx68364_)))))
                      (declare (not safe))
                      (call-with-parameters
                       __tmp69513
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (for-each __tmp69512 _all-modules68362_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx68257_)
        (letrec ((_compile-ssi68259_
                  (lambda (_code68325_)
                    (let* ((_path68327_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx68257_
                               '#f
                               '".ssi")))
                           (_prelude68338_
                            (let* ((_super68329_
                                    (##structure-ref
                                     _ctx68257_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e68331_
                                    (##structure-ref
                                     _super68329_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e68331_
                                  ((lambda (_g6833368335_)
                                     (make-symbol '":" _g6833368335_))
                                   _$e68331_)
                                  ':<root>)))
                           (_ns68340_
                            (##structure-ref
                             _ctx68257_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr68342_
                            (let ((__tmp69514
                                   (##structure-ref
                                    _ctx68257_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (symbol->string __tmp69514)))
                           (_pkg68349_
                            (let ((_$e68344_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr68342_ '#\/))))
                              (if _$e68344_
                                  ((lambda (_x68347_)
                                     (let ((__tmp69515
                                            (let ()
                                              (declare (not safe))
                                              (substring
                                               _idstr68342_
                                               '0
                                               _x68347_))))
                                       (declare (not safe))
                                       (string->symbol __tmp69515)))
                                   _$e68344_)
                                  '#f)))
                           (_rt68351_
                            (let ((__tmp69516
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp69516 _ctx68257_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path68327_))
                      (let ((__tmp69517
                             (lambda ()
                               (displayln '"prelude:" '" " _prelude68338_)
                               (if _pkg68349_
                                   (displayln '"package:" '" " _pkg68349_)
                                   '#!void)
                               (displayln '"namespace:" '" " _ns68340_)
                               (let () (declare (not safe)) (newline))
                               (let ()
                                 (declare (not safe))
                                 (pretty-print _code68325_))
                               (if _rt68351_
                                   (let ((__tmp69518
                                          (let ((__tmp69519
                                                 (let ((__tmp69523
                                                        (let ((__tmp69524
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'load-module '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp69524)))
               (__tmp69520
                (let ((__tmp69521
                       (let ((__tmp69522
                              (let ()
                                (declare (not safe))
                                (cons _rt68351_ '()))))
                         (declare (not safe))
                         (cons '%#quote __tmp69522))))
                  (declare (not safe))
                  (cons __tmp69521 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp69523
                                                         __tmp69520))))
                                            (declare (not safe))
                                            (cons '%#call __tmp69519))))
                                     (declare (not safe))
                                     (pretty-print __tmp69518))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path68327_
                         __tmp69517)))))
                 (_compile-phi68260_
                  (lambda (_part68265_)
                    (let* ((_part6826668279_ _part68265_)
                           (_E6826868283_
                            (lambda ()
                              (error '"No clause matching" _part6826668279_)))
                           (_K6826968294_
                            (lambda (_code68286_
                                     _n68287_
                                     _phi68288_
                                     _phi-ctx68289_)
                              (let* ((_code68292_
                                      (let ((__tmp69525
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code68286_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp69525
                                         gx#current-expander-context
                                         _phi-ctx68289_
                                         gx#current-expander-phi
                                         _phi68288_)))
                                     (__tmp69526
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx68257_
                                         _n68287_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp69526
                                 _code68292_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part6826668279_))
                          (let ((_hd6827068297_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part6826668279_)))
                                (_tl6827168299_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part6826668279_))))
                            (let ((_phi-ctx68302_ _hd6827068297_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl6827168299_))
                                  (let ((_hd6827268304_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl6827168299_)))
                                        (_tl6827368306_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl6827168299_))))
                                    (let ((_phi68309_ _hd6827268304_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl6827368306_))
                                          (let ((_hd6827468311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl6827368306_)))
                                                (_tl6827568313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl6827368306_))))
                                            (let ((_n68316_ _hd6827468311_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl6827568313_))
                                                  (let ((_hd6827668318_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl6827568313_)))
                                                        (_tl6827768320_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl6827568313_))))
                                                    (let ((_code68323_
                                                           _hd6827668318_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl6827768320_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K6826968294_
                                                             _code68323_
                                                             _n68316_
                                                             _phi68309_
                                                             _phi-ctx68302_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E6826868283_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E6826868283_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6826868283_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E6826868283_)))))
                          (let () (declare (not safe)) (_E6826868283_)))))))
          (let ((_g69527_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx68257_))))
            (begin
              (let ((_g69528_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g69527_)
                           (##vector-length _g69527_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g69528_ 2)))
                    (error "Context expects 2 values" _g69528_)))
              (let ((_ssi-code68262_
                     (let () (declare (not safe)) (##vector-ref _g69527_ 0)))
                    (_phi-code68263_
                     (let () (declare (not safe)) (##vector-ref _g69527_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi68259_ _ssi-code68262_))
                  (let ()
                    (declare (not safe))
                    (for-each _compile-phi68260_ _phi-code68263_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx68240_)
        (let* ((_path68242_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx68240_ '#f '".ssxi.ss")))
               (_code68244_
                (let ((__tmp69529
                       (##structure-ref
                        _ctx68240_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp69529)))
               (_idstr68246_
                (let ((__tmp69530
                       (##structure-ref
                        _ctx68240_
                        '1
                        gx#expander-context::t
                        '#f)))
                  (declare (not safe))
                  (symbol->string __tmp69530)))
               (_pkg68253_
                (let ((_$e68248_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr68246_ '#\/))))
                  (if _$e68248_
                      ((lambda (_x68251_)
                         (let ((__tmp69531
                                (let ()
                                  (declare (not safe))
                                  (substring _idstr68246_ '0 _x68251_))))
                           (declare (not safe))
                           (string->symbol __tmp69531)))
                       _$e68248_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path68242_))
          (let ((__tmp69532
                 (lambda ()
                   (displayln '"prelude: :gerbil/compiler/ssxi")
                   (if _pkg68253_ (displayln '"package: " _pkg68253_) '#!void)
                   (let () (declare (not safe)) (newline))
                   (let () (declare (not safe)) (pretty-print _code68244_)))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path68242_ __tmp69532)))))
    (define gxc#generate-meta-code
      (lambda (_ctx68233_)
        (let* ((_state68235_
                (let ((__obj69299 (make-object gxc#meta-state::t '4)))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj69299 _ctx68233_))
                  __obj69299))
               (_ssi-code68237_
                (let ((__tmp69533
                       (##structure-ref
                        _ctx68233_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp69533 _state68235_))))
          (values _ssi-code68237_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state68235_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx68226_)
        (let ((_lifts68228_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp69536
                 (lambda ()
                   (let ((_code68231_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx68226_))))
                     (if (let ((__tmp69541
                                (let ()
                                  (declare (not safe))
                                  (unbox _lifts68228_))))
                           (declare (not safe))
                           (null? __tmp69541))
                         _code68231_
                         (let ((__tmp69537
                                (let ((__tmp69540
                                       (let ()
                                         (declare (not safe))
                                         (cons _code68231_ '())))
                                      (__tmp69538
                                       (let ((__tmp69539
                                              (let ()
                                                (declare (not safe))
                                                (unbox _lifts68228_))))
                                         (declare (not safe))
                                         (reverse __tmp69539))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp69540 __tmp69538))))
                           (declare (not safe))
                           (cons 'begin __tmp69537))))))
                (__tmp69535
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp69534
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp69536
             gxc#current-compile-lift
             _lifts68228_
             gxc#current-compile-marks
             __tmp69535
             gxc#current-compile-identifiers
             __tmp69534)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx68222_)
        (let ((_modules68224_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp69542
                 (##structure-ref _ctx68222_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp69542 _modules68224_))
          (let ((__tmp69543
                 (let () (declare (not safe)) (unbox _modules68224_))))
            (declare (not safe))
            (reverse __tmp69543)))))
    (define gxc#compile-scm-file__%
      (lambda (_path68205_ _code68206_ _phi?68207_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path68205_))
        (let ((__tmp69544
               (lambda ()
                 (let ((__tmp69545
                        (let ((__tmp69546
                               (let ((__tmp69553
                                      (let ()
                                        (declare (not safe))
                                        (cons 'block '())))
                                     (__tmp69547
                                      (let ((__tmp69552
                                             (let ()
                                               (declare (not safe))
                                               (cons 'standard-bindings '())))
                                            (__tmp69548
                                             (let ((__tmp69551
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'extended-bindings
                                                            '())))
                                                   (__tmp69549
                                                    (let ((__tmp69550
                                                           (if _phi?68207_
                                                               '((inlining-limit
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          200))
                       '())))
              (declare (not safe))
              (foldr1 cons '() __tmp69550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp69551 __tmp69549))))
                                        (declare (not safe))
                                        (cons __tmp69552 __tmp69548))))
                                 (declare (not safe))
                                 (cons __tmp69553 __tmp69547))))
                          (declare (not safe))
                          (cons 'declare __tmp69546))))
                   (declare (not safe))
                   (pretty-print __tmp69545))
                 (let () (declare (not safe)) (pretty-print _code68206_)))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path68205_ __tmp69544))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path68205_ _phi?68207_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (let () (declare (not safe)) (delete-file _path68205_)))))
    (define gxc#compile-scm-file__0
      (lambda (_path68213_ _code68214_)
        (let ((_phi?68216_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path68213_ _code68214_ _phi?68216_))))
    (define gxc#compile-scm-file
      (lambda _g69555_
        (let ((_g69554_ (let () (declare (not safe)) (##length _g69555_))))
          (cond ((let () (declare (not safe)) (##fx= _g69554_ 2))
                 (apply (lambda (_path68213_ _code68214_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0 _path68213_ _code68214_)))
                        _g69555_))
                ((let () (declare (not safe)) (##fx= _g69554_ 3))
                 (apply (lambda (_path68218_ _code68219_ _phi?68220_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path68218_
                             _code68219_
                             _phi?68220_)))
                        _g69555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g69555_))))))
    (define gxc#gsc-debug-options__%
      (lambda (_phi?68125_)
        (if (gxc#current-compile-debug)
            (if _phi?68125_
                '()
                (let ((__tmp69556
                       (let ((__tmp69557
                              (let ((__tmp69558
                                     (let ()
                                       (declare (not safe))
                                       (cons '"-g" '()))))
                                (declare (not safe))
                                (cons '"-cc-options" __tmp69558))))
                         (declare (not safe))
                         (cons '"-track-scheme" __tmp69557))))
                  (declare (not safe))
                  (cons '"-debug-source" __tmp69556)))
            '())))
    (define gxc#gsc-debug-options__0
      (lambda ()
        (let ((_phi?68200_ '#f))
          (declare (not safe))
          (gxc#gsc-debug-options__% _phi?68200_))))
    (define gxc#gsc-debug-options
      (lambda _g69560_
        (let ((_g69559_ (let () (declare (not safe)) (##length _g69560_))))
          (cond ((let () (declare (not safe)) (##fx= _g69559_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__0)))
                        _g69560_))
                ((let () (declare (not safe)) (##fx= _g69559_ 1))
                 (apply (lambda (_phi?68202_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-debug-options__% _phi?68202_)))
                        _g69560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-debug-options
                  _g69560_))))))
    (define gxc#gsc-compile-file
      (lambda (_path68111_ _phi?68112_)
        (let* ((_gsc-args68119_
                (let ((_$e68114_ (gxc#current-compile-gsc-options)))
                  (if _$e68114_
                      ((lambda (_opts68117_)
                         (let ((__tmp69561
                                (let ()
                                  (declare (not safe))
                                  (cons _path68111_ '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp69561 _opts68117_)))
                       _$e68114_)
                      (let () (declare (not safe)) (cons _path68111_ '())))))
               (_gsc-args68121_
                (let ((__tmp69562
                       (let ()
                         (declare (not safe))
                         (gxc#gsc-debug-options__% _phi?68112_))))
                  (declare (not safe))
                  (foldr1 cons _gsc-args68119_ __tmp69562))))
          (let ((__tmp69563 (let () (declare (not safe)) (gxc#gerbil-gsc))))
            (declare (not safe))
            (gxc#invoke __tmp69563 _gsc-args68121_)))))
    (define gxc#compile-output-file
      (lambda (_ctx68083_ _n68084_ _ext68085_)
        (letrec ((_module-relative-path68087_
                  (lambda (_ctx68109_)
                    (let ((__tmp69564
                           (let ((__tmp69565
                                  (##structure-ref
                                   _ctx68109_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#module-id->path-string __tmp69565))))
                      (declare (not safe))
                      (path-strip-directory __tmp69564))))
                 (_module-source-directory68088_
                  (lambda (_ctx68105_)
                    (let ((__tmp69566
                           (let ((_mpath68107_
                                  (##structure-ref
                                   _ctx68105_
                                   '7
                                   gx#module-context::t
                                   '#f)))
                             (if (let ()
                                   (declare (not safe))
                                   (string? _mpath68107_))
                                 _mpath68107_
                                 (let ()
                                   (declare (not safe))
                                   (last _mpath68107_))))))
                      (declare (not safe))
                      (path-directory __tmp69566))))
                 (_section-string68089_
                  (lambda (_n68103_)
                    (if (let () (declare (not safe)) (number? _n68103_))
                        (let () (declare (not safe)) (number->string _n68103_))
                        (if (let () (declare (not safe)) (symbol? _n68103_))
                            (let ()
                              (declare (not safe))
                              (symbol->string _n68103_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n68103_))
                                _n68103_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n68103_)))))))
                 (_file-name68090_
                  (lambda (_path68101_)
                    (if _n68084_
                        (string-append
                         _path68101_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string68089_ _n68084_))
                         _ext68085_)
                        (string-append _path68101_ _ext68085_))))
                 (_file-path68091_
                  (lambda ()
                    (let ((_$e68096_ (gxc#current-compile-output-dir)))
                      (if _$e68096_
                          ((lambda (_outdir68099_)
                             (let ((__tmp69570
                                    (let ((__tmp69571
                                           (let ((__tmp69572
                                                  (##structure-ref
                                                   _ctx68083_
                                                   '1
                                                   gx#expander-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (gxc#module-id->path-string
                                              __tmp69572))))
                                      (declare (not safe))
                                      (_file-name68090_ __tmp69571))))
                               (declare (not safe))
                               (path-expand __tmp69570 _outdir68099_)))
                           _$e68096_)
                          (let ((__tmp69568
                                 (let ((__tmp69569
                                        (let ()
                                          (declare (not safe))
                                          (_module-relative-path68087_
                                           _ctx68083_))))
                                   (declare (not safe))
                                   (_file-name68090_ __tmp69569)))
                                (__tmp69567
                                 (let ()
                                   (declare (not safe))
                                   (_module-source-directory68088_
                                    _ctx68083_))))
                            (declare (not safe))
                            (path-expand __tmp69568 __tmp69567)))))))
          (let ((_path68093_ (let () (declare (not safe)) (_file-path68091_))))
            (let ((__tmp69573
                   (let () (declare (not safe)) (path-directory _path68093_))))
              (declare (not safe))
              (create-directory* __tmp69573))
            _path68093_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx68066_)
        (letrec ((_file-name68068_
                  (lambda (_id68081_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id68081_))
                     '".scm")))
                 (_file-path68069_
                  (lambda ()
                    (let* ((_file68074_
                            (let ((__tmp69574
                                   (##structure-ref
                                    _ctx68066_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name68068_ __tmp69574)))
                           (_$e68076_ (gxc#current-compile-output-dir)))
                      (if _$e68076_
                          ((lambda (_outdir68079_)
                             (let ((__tmp69575
                                    (let ()
                                      (declare (not safe))
                                      (path-expand '"static" _outdir68079_))))
                               (declare (not safe))
                               (path-expand _file68074_ __tmp69575)))
                           _$e68076_)
                          (let ()
                            (declare (not safe))
                            (path-expand _file68074_ '"static")))))))
          (let ((_path68071_ (let () (declare (not safe)) (_file-path68069_))))
            (let ((__tmp69576
                   (let () (declare (not safe)) (path-directory _path68071_))))
              (declare (not safe))
              (create-directory* __tmp69576))
            _path68071_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx68053_ _opts68054_)
        (let ((_$e68056_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts68054_))))
          (if _$e68056_
              (values _$e68056_)
              (let* ((_mod-str68059_
                      (let ((__tmp69577
                             (##structure-ref
                              _ctx68053_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (symbol->string __tmp69577)))
                     (_$e68061_
                      (let ()
                        (declare (not safe))
                        (string-rindex _mod-str68059_ '#\/))))
                (if _$e68061_
                    ((lambda (_ix68064_)
                       (let ((__tmp69579
                              (let () (declare (not safe)) (fx+ _ix68064_ '1)))
                             (__tmp69578
                              (let ()
                                (declare (not safe))
                                (string-length _mod-str68059_))))
                         (declare (not safe))
                         (substring _mod-str68059_ __tmp69579 __tmp69578)))
                     _$e68061_)
                    _mod-str68059_))))))
    (define gxc#static-module-name
      (lambda (_idstr68046_)
        (if (let () (declare (not safe)) (string? _idstr68046_))
            (let* ((_str68048_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr68046_)))
                   (_strs68050_
                    (let ()
                      (declare (not safe))
                      (string-split _str68048_ '#\/))))
              (let () (declare (not safe)) (string-join _strs68050_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr68046_))
                (let ((__tmp69580
                       (let ()
                         (declare (not safe))
                         (symbol->string _idstr68046_))))
                  (declare (not safe))
                  (gxc#static-module-name __tmp69580))
                (error '"Bad module id" _idstr68046_)))))
    (define gxc#invoke
      (lambda (_program68038_ _args68039_)
        (let ((__tmp69581
               (let ()
                 (declare (not safe))
                 (cons _program68038_ _args68039_))))
          (declare (not safe))
          (gxc#verbose '"invoke " __tmp69581))
        (let* ((_proc68041_
                (let ((__tmp69582
                       (let ((__tmp69583
                              (let ((__tmp69584
                                     (let ((__tmp69585
                                            (let ((__tmp69586
                                                   (let ((__tmp69587
                                                          (let ((__tmp69588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp69589
                                (let () (declare (not safe)) (cons '#f '()))))
                           (declare (not safe))
                           (cons 'stderr-redirection: __tmp69589))))
                    (declare (not safe))
                    (cons '#f __tmp69588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'stdout-redirection:
                                                           __tmp69587))))
                                              (declare (not safe))
                                              (cons _args68039_ __tmp69586))))
                                       (declare (not safe))
                                       (cons 'arguments: __tmp69585))))
                                (declare (not safe))
                                (cons _program68038_ __tmp69584))))
                         (declare (not safe))
                         (cons 'path: __tmp69583))))
                  (declare (not safe))
                  (open-process __tmp69582)))
               (_status68043_
                (let () (declare (not safe)) (process-status _proc68041_))))
          (let () (declare (not safe)) (close-port _proc68041_))
          (if (let () (declare (not safe)) (zero? _status68043_))
              '#!void
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Compilation error; process exit with nonzero status"
                 _program68038_))))))))
