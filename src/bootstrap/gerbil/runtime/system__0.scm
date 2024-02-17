(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708210939)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-53-g21b6c132"))
    (define gerbil-system-manifest
      (let ((__tmp78031
             (let ((__tmp78032
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp78032)))
            (__tmp78028
             (let ((__tmp78029
                    (let ((__tmp78030 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp78030))))
               (declare (not safe))
               (cons __tmp78029 '()))))
        (declare (not safe))
        (cons __tmp78031 __tmp78028)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest73905_ _port73906_)
        (let ((_p73912_
               (lambda (_g7390773909_) (display _g7390773909_ _port73906_)))
              (_l73913_ (length _manifest73905_))
              (_i73914_ '0))
          (for-each
           (lambda (_layer73916_)
             (if (let () (declare (not safe)) (zero? _i73914_))
                 '#!void
                 (if (= _i73914_ '1)
                     (let () (declare (not safe)) (_p73912_ '" on "))
                     (let () (declare (not safe)) (_p73912_ '", "))))
             (let* ((_layer7391773924_ _layer73916_)
                    (_E7391973928_
                     (lambda ()
                       (error '"No clause matching" _layer7391773924_)))
                    (_K7392073934_
                     (lambda (_version73931_ _name73932_)
                       (let () (declare (not safe)) (_p73912_ _name73932_))
                       (let () (declare (not safe)) (_p73912_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p73912_ _version73931_)))))
               (if (let () (declare (not safe)) (##pair? _layer7391773924_))
                   (let ((_hd7392173937_
                          (let ()
                            (declare (not safe))
                            (##car _layer7391773924_)))
                         (_tl7392273939_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer7391773924_))))
                     (let* ((_name73942_ _hd7392173937_)
                            (_version73944_ _tl7392273939_))
                       (declare (not safe))
                       (_K7392073934_ _version73944_ _name73942_)))
                   (let () (declare (not safe)) (_E7391973928_))))
             (set! _i73914_ (+ _i73914_ '1)))
           _manifest73905_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest73950_ build-manifest)
               (_port73952_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest73950_ _port73952_))))
    (define display-build-manifest__1
      (lambda (_manifest73954_)
        (let ((_port73956_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest73954_ _port73956_))))
    (define display-build-manifest
      (lambda _g78034_
        (let ((_g78033_ (let () (declare (not safe)) (##length _g78034_))))
          (cond ((let () (declare (not safe)) (##fx= _g78033_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g78034_))
                ((let () (declare (not safe)) (##fx= _g78033_ 1))
                 (apply (lambda (_manifest73954_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest73954_)))
                        _g78034_))
                ((let () (declare (not safe)) (##fx= _g78033_ 2))
                 (apply (lambda (_manifest73958_ _port73959_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest73958_
                             _port73959_)))
                        _g78034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g78034_))))))
    (define build-manifest/layer
      (lambda (_layer73900_)
        (let ((_l73902_ (assoc _layer73900_ build-manifest)))
          (if _l73902_
              (let () (declare (not safe)) (cons _l73902_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp78035 (car build-manifest)))
          (declare (not safe))
          (cons __tmp78035 '()))))
    (define build-manifest-string__%
      (lambda (_manifest73887_)
        (call-with-output-string
         '()
         (lambda (_p73889_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest73887_ _p73889_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest73895_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest73895_))))
    (define build-manifest-string
      (lambda _g78037_
        (let ((_g78036_ (let () (declare (not safe)) (##length _g78037_))))
          (cond ((let () (declare (not safe)) (##fx= _g78036_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g78037_))
                ((let () (declare (not safe)) (##fx= _g78036_ 1))
                 (apply (lambda (_manifest73897_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest73897_)))
                        _g78037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g78037_))))))
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
        (let ((_$e73881_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e73881_ _$e73881_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e73877_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e73877_ _$e73877_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp78038 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp78038 '#\')))))))
