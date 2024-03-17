(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1710677337)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-79-g8c248d67"))
    (define gerbil-system-manifest
      (let ((__tmp61907
             (let ((__tmp61908
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp61908)))
            (__tmp61904
             (let ((__tmp61905
                    (let ((__tmp61906 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp61906))))
               (declare (not safe))
               (cons __tmp61905 '()))))
        (declare (not safe))
        (cons __tmp61907 __tmp61904)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest61848_ _port61849_)
        (let ((_p61855_
               (lambda (_g6185061852_) (display _g6185061852_ _port61849_)))
              (_l61856_ (length _manifest61848_))
              (_i61857_ '0))
          (for-each
           (lambda (_layer61859_)
             (if (let () (declare (not safe)) (zero? _i61857_))
                 '#!void
                 (if (= _i61857_ '1)
                     (let () (declare (not safe)) (_p61855_ '" on "))
                     (let () (declare (not safe)) (_p61855_ '", "))))
             (let* ((_layer6186061867_ _layer61859_)
                    (_E6186261871_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6186061867_))))
                    (_K6186361877_
                     (lambda (_version61874_ _name61875_)
                       (let () (declare (not safe)) (_p61855_ _name61875_))
                       (let () (declare (not safe)) (_p61855_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p61855_ _version61874_)))))
               (if (let () (declare (not safe)) (##pair? _layer6186061867_))
                   (let ((_hd6186461880_
                          (let ()
                            (declare (not safe))
                            (##car _layer6186061867_)))
                         (_tl6186561882_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6186061867_))))
                     (let* ((_name61885_ _hd6186461880_)
                            (_version61887_ _tl6186561882_))
                       (declare (not safe))
                       (_K6186361877_ _version61887_ _name61885_)))
                   (let () (declare (not safe)) (_E6186261871_))))
             (set! _i61857_ (+ _i61857_ '1)))
           _manifest61848_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest61893_ build-manifest)
               (_port61895_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61893_ _port61895_))))
    (define display-build-manifest__1
      (lambda (_manifest61897_)
        (let ((_port61899_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61897_ _port61899_))))
    (define display-build-manifest
      (lambda _g61910_
        (let ((_g61909_ (let () (declare (not safe)) (##length _g61910_))))
          (cond ((let () (declare (not safe)) (##fx= _g61909_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g61910_))
                ((let () (declare (not safe)) (##fx= _g61909_ 1))
                 (apply (lambda (_manifest61897_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest61897_)))
                        _g61910_))
                ((let () (declare (not safe)) (##fx= _g61909_ 2))
                 (apply (lambda (_manifest61901_ _port61902_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest61901_
                             _port61902_)))
                        _g61910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g61910_))))))
    (define build-manifest/layer
      (lambda (_layer61843_)
        (let ((_l61845_ (assoc _layer61843_ build-manifest)))
          (if _l61845_
              (let () (declare (not safe)) (cons _l61845_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp61911 (car build-manifest)))
          (declare (not safe))
          (cons __tmp61911 '()))))
    (define build-manifest-string__%
      (lambda (_manifest61830_)
        (call-with-output-string
         '()
         (lambda (_p61832_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest61830_ _p61832_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest61838_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest61838_))))
    (define build-manifest-string
      (lambda _g61913_
        (let ((_g61912_ (let () (declare (not safe)) (##length _g61913_))))
          (cond ((let () (declare (not safe)) (##fx= _g61912_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g61913_))
                ((let () (declare (not safe)) (##fx= _g61912_ 1))
                 (apply (lambda (_manifest61840_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest61840_)))
                        _g61913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g61913_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let ()
          (declare (not safe))
          (build-manifest-string__% gerbil-system-manifest))))
    (define gerbil-greeting
      (let () (declare (not safe)) (gerbil-system-version-string)))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_$e61824_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e61824_ _$e61824_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e61820_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e61820_ _$e61820_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (member '"--enable-smp"
                          (let ((__tmp61914 (configure-command-string)))
                            (declare (not safe))
                            (string-split __tmp61914 '#\'))))
            '#!void)
        __smp?))))
