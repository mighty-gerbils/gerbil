(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1710699090)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-91-g33e0747d"))
    (define gerbil-system-manifest
      (let ((__tmp61914
             (let ((__tmp61915
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp61915)))
            (__tmp61911
             (let ((__tmp61912
                    (let ((__tmp61913 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp61913))))
               (declare (not safe))
               (cons __tmp61912 '()))))
        (declare (not safe))
        (cons __tmp61914 __tmp61911)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest61855_ _port61856_)
        (let ((_p61862_
               (lambda (_g6185761859_) (display _g6185761859_ _port61856_)))
              (_l61863_ (length _manifest61855_))
              (_i61864_ '0))
          (for-each
           (lambda (_layer61866_)
             (if (let () (declare (not safe)) (zero? _i61864_))
                 '#!void
                 (if (= _i61864_ '1)
                     (let () (declare (not safe)) (_p61862_ '" on "))
                     (let () (declare (not safe)) (_p61862_ '", "))))
             (let* ((_layer6186761874_ _layer61866_)
                    (_E6186961878_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6186761874_))))
                    (_K6187061884_
                     (lambda (_version61881_ _name61882_)
                       (let () (declare (not safe)) (_p61862_ _name61882_))
                       (let () (declare (not safe)) (_p61862_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p61862_ _version61881_)))))
               (if (let () (declare (not safe)) (##pair? _layer6186761874_))
                   (let ((_hd6187161887_
                          (let ()
                            (declare (not safe))
                            (##car _layer6186761874_)))
                         (_tl6187261889_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6186761874_))))
                     (let* ((_name61892_ _hd6187161887_)
                            (_version61894_ _tl6187261889_))
                       (declare (not safe))
                       (_K6187061884_ _version61894_ _name61892_)))
                   (let () (declare (not safe)) (_E6186961878_))))
             (set! _i61864_ (+ _i61864_ '1)))
           _manifest61855_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest61900_ build-manifest)
               (_port61902_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61900_ _port61902_))))
    (define display-build-manifest__1
      (lambda (_manifest61904_)
        (let ((_port61906_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61904_ _port61906_))))
    (define display-build-manifest
      (lambda _g61917_
        (let ((_g61916_ (let () (declare (not safe)) (##length _g61917_))))
          (cond ((let () (declare (not safe)) (##fx= _g61916_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g61917_))
                ((let () (declare (not safe)) (##fx= _g61916_ 1))
                 (apply (lambda (_manifest61904_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest61904_)))
                        _g61917_))
                ((let () (declare (not safe)) (##fx= _g61916_ 2))
                 (apply (lambda (_manifest61908_ _port61909_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest61908_
                             _port61909_)))
                        _g61917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g61917_))))))
    (define build-manifest/layer
      (lambda (_layer61850_)
        (let ((_l61852_ (assoc _layer61850_ build-manifest)))
          (if _l61852_
              (let () (declare (not safe)) (cons _l61852_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp61918 (car build-manifest)))
          (declare (not safe))
          (cons __tmp61918 '()))))
    (define build-manifest-string__%
      (lambda (_manifest61837_)
        (call-with-output-string
         '()
         (lambda (_p61839_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest61837_ _p61839_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest61845_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest61845_))))
    (define build-manifest-string
      (lambda _g61920_
        (let ((_g61919_ (let () (declare (not safe)) (##length _g61920_))))
          (cond ((let () (declare (not safe)) (##fx= _g61919_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g61920_))
                ((let () (declare (not safe)) (##fx= _g61919_ 1))
                 (apply (lambda (_manifest61847_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest61847_)))
                        _g61920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g61920_))))))
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
        (let ((_$e61831_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e61831_ _$e61831_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e61827_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e61827_ _$e61827_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (let () (declare (not safe)) (eq? __smp? '#!void))
            (set! __smp?
                  (member '"--enable-smp"
                          (let ((__tmp61921 (configure-command-string)))
                            (declare (not safe))
                            (string-split __tmp61921 '#\'))))
            '#!void)
        __smp?))))
