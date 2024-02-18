(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708280331)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-65-g4f7e3d2d"))
    (define gerbil-system-manifest
      (let ((__tmp78936
             (let ((__tmp78937
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp78937)))
            (__tmp78933
             (let ((__tmp78934
                    (let ((__tmp78935 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp78935))))
               (declare (not safe))
               (cons __tmp78934 '()))))
        (declare (not safe))
        (cons __tmp78936 __tmp78933)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest74810_ _port74811_)
        (let ((_p74817_
               (lambda (_g7481274814_) (display _g7481274814_ _port74811_)))
              (_l74818_ (length _manifest74810_))
              (_i74819_ '0))
          (for-each
           (lambda (_layer74821_)
             (if (let () (declare (not safe)) (zero? _i74819_))
                 '#!void
                 (if (= _i74819_ '1)
                     (let () (declare (not safe)) (_p74817_ '" on "))
                     (let () (declare (not safe)) (_p74817_ '", "))))
             (let* ((_layer7482274829_ _layer74821_)
                    (_E7482474833_
                     (lambda ()
                       (error '"No clause matching" _layer7482274829_)))
                    (_K7482574839_
                     (lambda (_version74836_ _name74837_)
                       (let () (declare (not safe)) (_p74817_ _name74837_))
                       (let () (declare (not safe)) (_p74817_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p74817_ _version74836_)))))
               (if (let () (declare (not safe)) (##pair? _layer7482274829_))
                   (let ((_hd7482674842_
                          (let ()
                            (declare (not safe))
                            (##car _layer7482274829_)))
                         (_tl7482774844_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer7482274829_))))
                     (let* ((_name74847_ _hd7482674842_)
                            (_version74849_ _tl7482774844_))
                       (declare (not safe))
                       (_K7482574839_ _version74849_ _name74847_)))
                   (let () (declare (not safe)) (_E7482474833_))))
             (set! _i74819_ (+ _i74819_ '1)))
           _manifest74810_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest74855_ build-manifest)
               (_port74857_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest74855_ _port74857_))))
    (define display-build-manifest__1
      (lambda (_manifest74859_)
        (let ((_port74861_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest74859_ _port74861_))))
    (define display-build-manifest
      (lambda _g78939_
        (let ((_g78938_ (let () (declare (not safe)) (##length _g78939_))))
          (cond ((let () (declare (not safe)) (##fx= _g78938_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g78939_))
                ((let () (declare (not safe)) (##fx= _g78938_ 1))
                 (apply (lambda (_manifest74859_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest74859_)))
                        _g78939_))
                ((let () (declare (not safe)) (##fx= _g78938_ 2))
                 (apply (lambda (_manifest74863_ _port74864_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest74863_
                             _port74864_)))
                        _g78939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g78939_))))))
    (define build-manifest/layer
      (lambda (_layer74805_)
        (let ((_l74807_ (assoc _layer74805_ build-manifest)))
          (if _l74807_
              (let () (declare (not safe)) (cons _l74807_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp78940 (car build-manifest)))
          (declare (not safe))
          (cons __tmp78940 '()))))
    (define build-manifest-string__%
      (lambda (_manifest74792_)
        (call-with-output-string
         '()
         (lambda (_p74794_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest74792_ _p74794_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest74800_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest74800_))))
    (define build-manifest-string
      (lambda _g78942_
        (let ((_g78941_ (let () (declare (not safe)) (##length _g78942_))))
          (cond ((let () (declare (not safe)) (##fx= _g78941_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g78942_))
                ((let () (declare (not safe)) (##fx= _g78941_ 1))
                 (apply (lambda (_manifest74802_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest74802_)))
                        _g78942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g78942_))))))
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
        (let ((_$e74786_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e74786_ _$e74786_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e74782_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e74782_ _$e74782_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp78943 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp78943 '#\')))))))
