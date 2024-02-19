(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708334572)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-73-g91733f65"))
    (define gerbil-system-manifest
      (let ((__tmp78938
             (let ((__tmp78939
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp78939)))
            (__tmp78935
             (let ((__tmp78936
                    (let ((__tmp78937 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp78937))))
               (declare (not safe))
               (cons __tmp78936 '()))))
        (declare (not safe))
        (cons __tmp78938 __tmp78935)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest74812_ _port74813_)
        (let ((_p74819_
               (lambda (_g7481474816_) (display _g7481474816_ _port74813_)))
              (_l74820_ (length _manifest74812_))
              (_i74821_ '0))
          (for-each
           (lambda (_layer74823_)
             (if (let () (declare (not safe)) (zero? _i74821_))
                 '#!void
                 (if (= _i74821_ '1)
                     (let () (declare (not safe)) (_p74819_ '" on "))
                     (let () (declare (not safe)) (_p74819_ '", "))))
             (let* ((_layer7482474831_ _layer74823_)
                    (_E7482674835_
                     (lambda ()
                       (error '"No clause matching" _layer7482474831_)))
                    (_K7482774841_
                     (lambda (_version74838_ _name74839_)
                       (let () (declare (not safe)) (_p74819_ _name74839_))
                       (let () (declare (not safe)) (_p74819_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p74819_ _version74838_)))))
               (if (let () (declare (not safe)) (##pair? _layer7482474831_))
                   (let ((_hd7482874844_
                          (let ()
                            (declare (not safe))
                            (##car _layer7482474831_)))
                         (_tl7482974846_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer7482474831_))))
                     (let* ((_name74849_ _hd7482874844_)
                            (_version74851_ _tl7482974846_))
                       (declare (not safe))
                       (_K7482774841_ _version74851_ _name74849_)))
                   (let () (declare (not safe)) (_E7482674835_))))
             (set! _i74821_ (+ _i74821_ '1)))
           _manifest74812_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest74857_ build-manifest)
               (_port74859_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest74857_ _port74859_))))
    (define display-build-manifest__1
      (lambda (_manifest74861_)
        (let ((_port74863_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest74861_ _port74863_))))
    (define display-build-manifest
      (lambda _g78941_
        (let ((_g78940_ (let () (declare (not safe)) (##length _g78941_))))
          (cond ((let () (declare (not safe)) (##fx= _g78940_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g78941_))
                ((let () (declare (not safe)) (##fx= _g78940_ 1))
                 (apply (lambda (_manifest74861_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest74861_)))
                        _g78941_))
                ((let () (declare (not safe)) (##fx= _g78940_ 2))
                 (apply (lambda (_manifest74865_ _port74866_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest74865_
                             _port74866_)))
                        _g78941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g78941_))))))
    (define build-manifest/layer
      (lambda (_layer74807_)
        (let ((_l74809_ (assoc _layer74807_ build-manifest)))
          (if _l74809_
              (let () (declare (not safe)) (cons _l74809_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp78942 (car build-manifest)))
          (declare (not safe))
          (cons __tmp78942 '()))))
    (define build-manifest-string__%
      (lambda (_manifest74794_)
        (call-with-output-string
         '()
         (lambda (_p74796_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest74794_ _p74796_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest74802_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest74802_))))
    (define build-manifest-string
      (lambda _g78944_
        (let ((_g78943_ (let () (declare (not safe)) (##length _g78944_))))
          (cond ((let () (declare (not safe)) (##fx= _g78943_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g78944_))
                ((let () (declare (not safe)) (##fx= _g78943_ 1))
                 (apply (lambda (_manifest74804_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest74804_)))
                        _g78944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g78944_))))))
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
        (let ((_$e74788_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e74788_ _$e74788_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e74784_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e74784_ _$e74784_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp78945 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp78945 '#\')))))))
