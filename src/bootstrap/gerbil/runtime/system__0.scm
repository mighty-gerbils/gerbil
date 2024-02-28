(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1709127355)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-55-g23abde13"))
    (define gerbil-system-manifest
      (let ((__tmp61550
             (let ((__tmp61551
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp61551)))
            (__tmp61547
             (let ((__tmp61548
                    (let ((__tmp61549 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp61549))))
               (declare (not safe))
               (cons __tmp61548 '()))))
        (declare (not safe))
        (cons __tmp61550 __tmp61547)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest61491_ _port61492_)
        (let ((_p61498_
               (lambda (_g6149361495_) (display _g6149361495_ _port61492_)))
              (_l61499_ (length _manifest61491_))
              (_i61500_ '0))
          (for-each
           (lambda (_layer61502_)
             (if (let () (declare (not safe)) (zero? _i61500_))
                 '#!void
                 (if (= _i61500_ '1)
                     (let () (declare (not safe)) (_p61498_ '" on "))
                     (let () (declare (not safe)) (_p61498_ '", "))))
             (let* ((_layer6150361510_ _layer61502_)
                    (_E6150561514_
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (error '"No clause matching" _layer6150361510_))))
                    (_K6150661520_
                     (lambda (_version61517_ _name61518_)
                       (let () (declare (not safe)) (_p61498_ _name61518_))
                       (let () (declare (not safe)) (_p61498_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p61498_ _version61517_)))))
               (if (let () (declare (not safe)) (##pair? _layer6150361510_))
                   (let ((_hd6150761523_
                          (let ()
                            (declare (not safe))
                            (##car _layer6150361510_)))
                         (_tl6150861525_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6150361510_))))
                     (let* ((_name61528_ _hd6150761523_)
                            (_version61530_ _tl6150861525_))
                       (declare (not safe))
                       (_K6150661520_ _version61530_ _name61528_)))
                   (let () (declare (not safe)) (_E6150561514_))))
             (set! _i61500_ (+ _i61500_ '1)))
           _manifest61491_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest61536_ build-manifest)
               (_port61538_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61536_ _port61538_))))
    (define display-build-manifest__1
      (lambda (_manifest61540_)
        (let ((_port61542_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest61540_ _port61542_))))
    (define display-build-manifest
      (lambda _g61553_
        (let ((_g61552_ (let () (declare (not safe)) (##length _g61553_))))
          (cond ((let () (declare (not safe)) (##fx= _g61552_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g61553_))
                ((let () (declare (not safe)) (##fx= _g61552_ 1))
                 (apply (lambda (_manifest61540_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest61540_)))
                        _g61553_))
                ((let () (declare (not safe)) (##fx= _g61552_ 2))
                 (apply (lambda (_manifest61544_ _port61545_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest61544_
                             _port61545_)))
                        _g61553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g61553_))))))
    (define build-manifest/layer
      (lambda (_layer61486_)
        (let ((_l61488_ (assoc _layer61486_ build-manifest)))
          (if _l61488_
              (let () (declare (not safe)) (cons _l61488_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp61554 (car build-manifest)))
          (declare (not safe))
          (cons __tmp61554 '()))))
    (define build-manifest-string__%
      (lambda (_manifest61473_)
        (call-with-output-string
         '()
         (lambda (_p61475_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest61473_ _p61475_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest61481_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest61481_))))
    (define build-manifest-string
      (lambda _g61556_
        (let ((_g61555_ (let () (declare (not safe)) (##length _g61556_))))
          (cond ((let () (declare (not safe)) (##fx= _g61555_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g61556_))
                ((let () (declare (not safe)) (##fx= _g61555_ 1))
                 (apply (lambda (_manifest61483_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest61483_)))
                        _g61556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g61556_))))))
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
        (let ((_$e61467_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e61467_ _$e61467_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e61463_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e61463_ _$e61463_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp61557 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp61557 '#\')))))))
