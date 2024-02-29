(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1709229969)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-50-ge94d1a06"))
    (define gerbil-system-manifest
      (let ((__tmp61547
             (let ((__tmp61548
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp61548)))
            (__tmp61544
             (let ((__tmp61545
                    (let ((__tmp61546 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp61546))))
               (declare (not safe))
               (cons __tmp61545 '()))))
        (declare (not safe))
        (cons __tmp61547 __tmp61544)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest61488_ _port61489_)
        (let ((_p61495_
               (lambda (_g6149061492_) (display _g6149061492_ _port61489_)))
              (_l61496_ (length _manifest61488_))
              (_i61497_ '0))
          (for-each
           (lambda (_layer61499_)
             (if (let () (declare (not safe)) (zero? _i61497_))
                 '#!void
                 (if (= _i61497_ '1)
                     (let () (declare (not safe)) (_p61495_ '" on "))
                     (let () (declare (not safe)) (_p61495_ '", "))))
             (let* ((_layer6150061507_ _layer61499_)
                    (_E6150261511_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6150061507_))))
                    (_K6150361517_
                     (lambda (_version61514_ _name61515_)
                       (let () (declare (not safe)) (_p61495_ _name61515_))
                       (let () (declare (not safe)) (_p61495_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p61495_ _version61514_)))))
               (if (let () (declare (not safe)) (##pair? _layer6150061507_))
                   (let ((_hd6150461520_
                          (let ()
                            (declare (not safe))
                            (##car _layer6150061507_)))
                         (_tl6150561522_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6150061507_))))
                     (let* ((_name61525_ _hd6150461520_)
                            (_version61527_ _tl6150561522_))
                       (declare (not safe))
                       (_K6150361517_ _version61527_ _name61525_)))
                   (let () (declare (not safe)) (_E6150261511_))))
             (set! _i61497_ (+ _i61497_ '1)))
           _manifest61488_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest61533_ build-manifest)
               (_port61535_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61533_ _port61535_))))
    (define display-build-manifest__1
      (lambda (_manifest61537_)
        (let ((_port61539_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61537_ _port61539_))))
    (define display-build-manifest
      (lambda _g61550_
        (let ((_g61549_ (let () (declare (not safe)) (##length _g61550_))))
          (cond ((let () (declare (not safe)) (##fx= _g61549_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g61550_))
                ((let () (declare (not safe)) (##fx= _g61549_ 1))
                 (apply (lambda (_manifest61537_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest61537_)))
                        _g61550_))
                ((let () (declare (not safe)) (##fx= _g61549_ 2))
                 (apply (lambda (_manifest61541_ _port61542_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest61541_
                             _port61542_)))
                        _g61550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g61550_))))))
    (define build-manifest/layer
      (lambda (_layer61483_)
        (let ((_l61485_ (assoc _layer61483_ build-manifest)))
          (if _l61485_
              (let () (declare (not safe)) (cons _l61485_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp61551 (car build-manifest)))
          (declare (not safe))
          (cons __tmp61551 '()))))
    (define build-manifest-string__%
      (lambda (_manifest61470_)
        (call-with-output-string
         '()
         (lambda (_p61472_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest61470_ _p61472_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest61478_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest61478_))))
    (define build-manifest-string
      (lambda _g61553_
        (let ((_g61552_ (let () (declare (not safe)) (##length _g61553_))))
          (cond ((let () (declare (not safe)) (##fx= _g61552_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g61553_))
                ((let () (declare (not safe)) (##fx= _g61552_ 1))
                 (apply (lambda (_manifest61480_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest61480_)))
                        _g61553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g61553_))))))
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
        (let ((_$e61464_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e61464_ _$e61464_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e61460_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e61460_ _$e61460_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp61554 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp61554 '#\')))))))
