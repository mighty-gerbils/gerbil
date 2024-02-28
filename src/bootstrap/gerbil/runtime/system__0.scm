(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1709159706)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-46-g0a2b04db"))
    (define gerbil-system-manifest
      (let ((__tmp61552
             (let ((__tmp61553
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp61553)))
            (__tmp61549
             (let ((__tmp61550
                    (let ((__tmp61551 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp61551))))
               (declare (not safe))
               (cons __tmp61550 '()))))
        (declare (not safe))
        (cons __tmp61552 __tmp61549)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest61493_ _port61494_)
        (let ((_p61500_
               (lambda (_g6149561497_) (display _g6149561497_ _port61494_)))
              (_l61501_ (length _manifest61493_))
              (_i61502_ '0))
          (for-each
           (lambda (_layer61504_)
             (if (let () (declare (not safe)) (zero? _i61502_))
                 '#!void
                 (if (= _i61502_ '1)
                     (let () (declare (not safe)) (_p61500_ '" on "))
                     (let () (declare (not safe)) (_p61500_ '", "))))
             (let* ((_layer6150561512_ _layer61504_)
                    (_E6150761516_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6150561512_))))
                    (_K6150861522_
                     (lambda (_version61519_ _name61520_)
                       (let () (declare (not safe)) (_p61500_ _name61520_))
                       (let () (declare (not safe)) (_p61500_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p61500_ _version61519_)))))
               (if (let () (declare (not safe)) (##pair? _layer6150561512_))
                   (let ((_hd6150961525_
                          (let ()
                            (declare (not safe))
                            (##car _layer6150561512_)))
                         (_tl6151061527_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6150561512_))))
                     (let* ((_name61530_ _hd6150961525_)
                            (_version61532_ _tl6151061527_))
                       (declare (not safe))
                       (_K6150861522_ _version61532_ _name61530_)))
                   (let () (declare (not safe)) (_E6150761516_))))
             (set! _i61502_ (+ _i61502_ '1)))
           _manifest61493_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest61538_ build-manifest)
               (_port61540_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61538_ _port61540_))))
    (define display-build-manifest__1
      (lambda (_manifest61542_)
        (let ((_port61544_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61542_ _port61544_))))
    (define display-build-manifest
      (lambda _g61555_
        (let ((_g61554_ (let () (declare (not safe)) (##length _g61555_))))
          (cond ((let () (declare (not safe)) (##fx= _g61554_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g61555_))
                ((let () (declare (not safe)) (##fx= _g61554_ 1))
                 (apply (lambda (_manifest61542_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest61542_)))
                        _g61555_))
                ((let () (declare (not safe)) (##fx= _g61554_ 2))
                 (apply (lambda (_manifest61546_ _port61547_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest61546_
                             _port61547_)))
                        _g61555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g61555_))))))
    (define build-manifest/layer
      (lambda (_layer61488_)
        (let ((_l61490_ (assoc _layer61488_ build-manifest)))
          (if _l61490_
              (let () (declare (not safe)) (cons _l61490_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp61556 (car build-manifest)))
          (declare (not safe))
          (cons __tmp61556 '()))))
    (define build-manifest-string__%
      (lambda (_manifest61475_)
        (call-with-output-string
         '()
         (lambda (_p61477_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest61475_ _p61477_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest61483_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest61483_))))
    (define build-manifest-string
      (lambda _g61558_
        (let ((_g61557_ (let () (declare (not safe)) (##length _g61558_))))
          (cond ((let () (declare (not safe)) (##fx= _g61557_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g61558_))
                ((let () (declare (not safe)) (##fx= _g61557_ 1))
                 (apply (lambda (_manifest61485_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest61485_)))
                        _g61558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g61558_))))))
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
        (let ((_$e61469_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e61469_ _$e61469_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e61465_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e61465_ _$e61465_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp61559 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp61559 '#\')))))))
