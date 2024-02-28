(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1709125254)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-53-ga475617c"))
    (define gerbil-system-manifest
      (let ((__tmp61540
             (let ((__tmp61541
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp61541)))
            (__tmp61537
             (let ((__tmp61538
                    (let ((__tmp61539 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp61539))))
               (declare (not safe))
               (cons __tmp61538 '()))))
        (declare (not safe))
        (cons __tmp61540 __tmp61537)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest61481_ _port61482_)
        (let ((_p61488_
               (lambda (_g6148361485_) (display _g6148361485_ _port61482_)))
              (_l61489_ (length _manifest61481_))
              (_i61490_ '0))
          (for-each
           (lambda (_layer61492_)
             (if (let () (declare (not safe)) (zero? _i61490_))
                 '#!void
                 (if (= _i61490_ '1)
                     (let () (declare (not safe)) (_p61488_ '" on "))
                     (let () (declare (not safe)) (_p61488_ '", "))))
             (let* ((_layer6149361500_ _layer61492_)
                    (_E6149561504_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6149361500_))))
                    (_K6149661510_
                     (lambda (_version61507_ _name61508_)
                       (let () (declare (not safe)) (_p61488_ _name61508_))
                       (let () (declare (not safe)) (_p61488_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p61488_ _version61507_)))))
               (if (let () (declare (not safe)) (##pair? _layer6149361500_))
                   (let ((_hd6149761513_
                          (let ()
                            (declare (not safe))
                            (##car _layer6149361500_)))
                         (_tl6149861515_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6149361500_))))
                     (let* ((_name61518_ _hd6149761513_)
                            (_version61520_ _tl6149861515_))
                       (declare (not safe))
                       (_K6149661510_ _version61520_ _name61518_)))
                   (let () (declare (not safe)) (_E6149561504_))))
             (set! _i61490_ (+ _i61490_ '1)))
           _manifest61481_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest61526_ build-manifest)
               (_port61528_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61526_ _port61528_))))
    (define display-build-manifest__1
      (lambda (_manifest61530_)
        (let ((_port61532_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61530_ _port61532_))))
    (define display-build-manifest
      (lambda _g61543_
        (let ((_g61542_ (let () (declare (not safe)) (##length _g61543_))))
          (cond ((let () (declare (not safe)) (##fx= _g61542_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g61543_))
                ((let () (declare (not safe)) (##fx= _g61542_ 1))
                 (apply (lambda (_manifest61530_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest61530_)))
                        _g61543_))
                ((let () (declare (not safe)) (##fx= _g61542_ 2))
                 (apply (lambda (_manifest61534_ _port61535_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest61534_
                             _port61535_)))
                        _g61543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g61543_))))))
    (define build-manifest/layer
      (lambda (_layer61476_)
        (let ((_l61478_ (assoc _layer61476_ build-manifest)))
          (if _l61478_
              (let () (declare (not safe)) (cons _l61478_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp61544 (car build-manifest)))
          (declare (not safe))
          (cons __tmp61544 '()))))
    (define build-manifest-string__%
      (lambda (_manifest61463_)
        (call-with-output-string
         '()
         (lambda (_p61465_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest61463_ _p61465_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest61471_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest61471_))))
    (define build-manifest-string
      (lambda _g61546_
        (let ((_g61545_ (let () (declare (not safe)) (##length _g61546_))))
          (cond ((let () (declare (not safe)) (##fx= _g61545_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g61546_))
                ((let () (declare (not safe)) (##fx= _g61545_ 1))
                 (apply (lambda (_manifest61473_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest61473_)))
                        _g61546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g61546_))))))
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
        (let ((_$e61457_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e61457_ _$e61457_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e61453_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e61453_ _$e61453_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp61547 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp61547 '#\')))))))
