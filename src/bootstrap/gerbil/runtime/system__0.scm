(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1707555131)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-38-g5486627a"))
    (define gerbil-system-manifest
      (let ((__tmp68224
             (let ((__tmp68225
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp68225)))
            (__tmp68221
             (let ((__tmp68222
                    (let ((__tmp68223 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp68223))))
               (declare (not safe))
               (cons __tmp68222 '()))))
        (declare (not safe))
        (cons __tmp68224 __tmp68221)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest63971_ _port63972_)
        (let ((_p63978_
               (lambda (_g6397363975_) (display _g6397363975_ _port63972_)))
              (_l63979_ (length _manifest63971_))
              (_i63980_ '0))
          (for-each
           (lambda (_layer63982_)
             (if (let () (declare (not safe)) (zero? _i63980_))
                 '#!void
                 (if (= _i63980_ '1)
                     (let () (declare (not safe)) (_p63978_ '" on "))
                     (let () (declare (not safe)) (_p63978_ '", "))))
             (let* ((_layer6398363990_ _layer63982_)
                    (_E6398563994_
                     (lambda ()
                       (error '"No clause matching" _layer6398363990_)))
                    (_K6398664000_
                     (lambda (_version63997_ _name63998_)
                       (let () (declare (not safe)) (_p63978_ _name63998_))
                       (let () (declare (not safe)) (_p63978_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p63978_ _version63997_)))))
               (if (let () (declare (not safe)) (##pair? _layer6398363990_))
                   (let ((_hd6398764003_
                          (let ()
                            (declare (not safe))
                            (##car _layer6398363990_)))
                         (_tl6398864005_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer6398363990_))))
                     (let* ((_name64008_ _hd6398764003_)
                            (_version64010_ _tl6398864005_))
                       (declare (not safe))
                       (_K6398664000_ _version64010_ _name64008_)))
                   (let () (declare (not safe)) (_E6398563994_))))
             (set! _i63980_ (+ _i63980_ '1)))
           _manifest63971_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest64016_ build-manifest)
               (_port64018_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64016_ _port64018_))))
    (define display-build-manifest__1
      (lambda (_manifest64020_)
        (let ((_port64022_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest64020_ _port64022_))))
    (define display-build-manifest
      (lambda _g68227_
        (let ((_g68226_ (let () (declare (not safe)) (##length _g68227_))))
          (cond ((let () (declare (not safe)) (##fx= _g68226_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g68227_))
                ((let () (declare (not safe)) (##fx= _g68226_ 1))
                 (apply (lambda (_manifest64020_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest64020_)))
                        _g68227_))
                ((let () (declare (not safe)) (##fx= _g68226_ 2))
                 (apply (lambda (_manifest64024_ _port64025_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest64024_
                             _port64025_)))
                        _g68227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g68227_))))))
    (define build-manifest/layer
      (lambda (_layer63966_)
        (let ((_l63968_ (assoc _layer63966_ build-manifest)))
          (if _l63968_
              (let () (declare (not safe)) (cons _l63968_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp68228 (car build-manifest)))
          (declare (not safe))
          (cons __tmp68228 '()))))
    (define build-manifest-string__%
      (lambda (_manifest63953_)
        (call-with-output-string
         '()
         (lambda (_p63955_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest63953_ _p63955_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest63961_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest63961_))))
    (define build-manifest-string
      (lambda _g68230_
        (let ((_g68229_ (let () (declare (not safe)) (##length _g68230_))))
          (cond ((let () (declare (not safe)) (##fx= _g68229_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g68230_))
                ((let () (declare (not safe)) (##fx= _g68229_ 1))
                 (apply (lambda (_manifest63963_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest63963_)))
                        _g68230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g68230_))))))
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
        (let ((_$e63947_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e63947_ _$e63947_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e63943_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e63943_ _$e63943_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp68231 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp68231 '#\')))))))
