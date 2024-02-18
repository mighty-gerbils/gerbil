(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708271947)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-62-gf868483c"))
    (define gerbil-system-manifest
      (let ((__tmp78934
             (let ((__tmp78935
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp78935)))
            (__tmp78931
             (let ((__tmp78932
                    (let ((__tmp78933 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp78933))))
               (declare (not safe))
               (cons __tmp78932 '()))))
        (declare (not safe))
        (cons __tmp78934 __tmp78931)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest74808_ _port74809_)
        (let ((_p74815_
               (lambda (_g7481074812_) (display _g7481074812_ _port74809_)))
              (_l74816_ (length _manifest74808_))
              (_i74817_ '0))
          (for-each
           (lambda (_layer74819_)
             (if (let () (declare (not safe)) (zero? _i74817_))
                 '#!void
                 (if (= _i74817_ '1)
                     (let () (declare (not safe)) (_p74815_ '" on "))
                     (let () (declare (not safe)) (_p74815_ '", "))))
             (let* ((_layer7482074827_ _layer74819_)
                    (_E7482274831_
                     (lambda ()
                       (error '"No clause matching" _layer7482074827_)))
                    (_K7482374837_
                     (lambda (_version74834_ _name74835_)
                       (let () (declare (not safe)) (_p74815_ _name74835_))
                       (let () (declare (not safe)) (_p74815_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p74815_ _version74834_)))))
               (if (let () (declare (not safe)) (##pair? _layer7482074827_))
                   (let ((_hd7482474840_
                          (let ()
                            (declare (not safe))
                            (##car _layer7482074827_)))
                         (_tl7482574842_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer7482074827_))))
                     (let* ((_name74845_ _hd7482474840_)
                            (_version74847_ _tl7482574842_))
                       (declare (not safe))
                       (_K7482374837_ _version74847_ _name74845_)))
                   (let () (declare (not safe)) (_E7482274831_))))
             (set! _i74817_ (+ _i74817_ '1)))
           _manifest74808_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest74853_ build-manifest)
               (_port74855_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest74853_ _port74855_))))
    (define display-build-manifest__1
      (lambda (_manifest74857_)
        (let ((_port74859_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest74857_ _port74859_))))
    (define display-build-manifest
      (lambda _g78937_
        (let ((_g78936_ (let () (declare (not safe)) (##length _g78937_))))
          (cond ((let () (declare (not safe)) (##fx= _g78936_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g78937_))
                ((let () (declare (not safe)) (##fx= _g78936_ 1))
                 (apply (lambda (_manifest74857_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest74857_)))
                        _g78937_))
                ((let () (declare (not safe)) (##fx= _g78936_ 2))
                 (apply (lambda (_manifest74861_ _port74862_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest74861_
                             _port74862_)))
                        _g78937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g78937_))))))
    (define build-manifest/layer
      (lambda (_layer74803_)
        (let ((_l74805_ (assoc _layer74803_ build-manifest)))
          (if _l74805_
              (let () (declare (not safe)) (cons _l74805_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp78938 (car build-manifest)))
          (declare (not safe))
          (cons __tmp78938 '()))))
    (define build-manifest-string__%
      (lambda (_manifest74790_)
        (call-with-output-string
         '()
         (lambda (_p74792_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest74790_ _p74792_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest74798_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest74798_))))
    (define build-manifest-string
      (lambda _g78940_
        (let ((_g78939_ (let () (declare (not safe)) (##length _g78940_))))
          (cond ((let () (declare (not safe)) (##fx= _g78939_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g78940_))
                ((let () (declare (not safe)) (##fx= _g78939_ 1))
                 (apply (lambda (_manifest74800_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest74800_)))
                        _g78940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g78940_))))))
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
        (let ((_$e74784_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e74784_ _$e74784_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e74780_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e74780_ _$e74780_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp78941 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp78941 '#\')))))))
