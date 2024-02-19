(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1708337963)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-75-g557d1954"))
    (define gerbil-system-manifest
      (let ((__tmp78188
             (let ((__tmp78189
                    (let () (declare (not safe)) (gerbil-version-string))))
               (declare (not safe))
               (cons '"Gerbil" __tmp78189)))
            (__tmp78185
             (let ((__tmp78186
                    (let ((__tmp78187 (system-version-string)))
                      (declare (not safe))
                      (cons '"Gambit" __tmp78187))))
               (declare (not safe))
               (cons __tmp78186 '()))))
        (declare (not safe))
        (cons __tmp78188 __tmp78185)))
    (define build-manifest gerbil-system-manifest)
    (set! build-manifest build-manifest)
    (define display-build-manifest__%
      (lambda (_manifest74143_ _port74144_)
        (let ((_p74150_
               (lambda (_g7414574147_) (display _g7414574147_ _port74144_)))
              (_l74151_ (length _manifest74143_))
              (_i74152_ '0))
          (for-each
           (lambda (_layer74154_)
             (if (let () (declare (not safe)) (zero? _i74152_))
                 '#!void
                 (if (= _i74152_ '1)
                     (let () (declare (not safe)) (_p74150_ '" on "))
                     (let () (declare (not safe)) (_p74150_ '", "))))
             (let* ((_layer7415574162_ _layer74154_)
                    (_E7415774166_
                     (lambda ()
                       (error '"No clause matching" _layer7415574162_)))
                    (_K7415874172_
                     (lambda (_version74169_ _name74170_)
                       (let () (declare (not safe)) (_p74150_ _name74170_))
                       (let () (declare (not safe)) (_p74150_ '" "))
                       (let ()
                         (declare (not safe))
                         (_p74150_ _version74169_)))))
               (if (let () (declare (not safe)) (##pair? _layer7415574162_))
                   (let ((_hd7415974175_
                          (let ()
                            (declare (not safe))
                            (##car _layer7415574162_)))
                         (_tl7416074177_
                          (let ()
                            (declare (not safe))
                            (##cdr _layer7415574162_))))
                     (let* ((_name74180_ _hd7415974175_)
                            (_version74182_ _tl7416074177_))
                       (declare (not safe))
                       (_K7415874172_ _version74182_ _name74180_)))
                   (let () (declare (not safe)) (_E7415774166_))))
             (set! _i74152_ (+ _i74152_ '1)))
           _manifest74143_))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_manifest74188_ build-manifest)
               (_port74190_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest74188_ _port74190_))))
    (define display-build-manifest__1
      (lambda (_manifest74192_)
        (let ((_port74194_ (current-output-port)))
          (declare (not safe))
          (display-build-manifest__% _manifest74192_ _port74194_))))
    (define display-build-manifest
      (lambda _g78191_
        (let ((_g78190_ (let () (declare (not safe)) (##length _g78191_))))
          (cond ((let () (declare (not safe)) (##fx= _g78190_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__0)))
                        _g78191_))
                ((let () (declare (not safe)) (##fx= _g78190_ 1))
                 (apply (lambda (_manifest74192_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__1 _manifest74192_)))
                        _g78191_))
                ((let () (declare (not safe)) (##fx= _g78190_ 2))
                 (apply (lambda (_manifest74196_ _port74197_)
                          (let ()
                            (declare (not safe))
                            (display-build-manifest__%
                             _manifest74196_
                             _port74197_)))
                        _g78191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g78191_))))))
    (define build-manifest/layer
      (lambda (_layer74138_)
        (let ((_l74140_ (assoc _layer74138_ build-manifest)))
          (if _l74140_
              (let () (declare (not safe)) (cons _l74140_ '()))
              '()))))
    (define build-manifest/head
      (lambda ()
        (let ((__tmp78192 (car build-manifest)))
          (declare (not safe))
          (cons __tmp78192 '()))))
    (define build-manifest-string__%
      (lambda (_manifest74125_)
        (call-with-output-string
         '()
         (lambda (_p74127_)
           (let ()
             (declare (not safe))
             (display-build-manifest__% _manifest74125_ _p74127_))))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_manifest74133_ build-manifest))
          (declare (not safe))
          (build-manifest-string__% _manifest74133_))))
    (define build-manifest-string
      (lambda _g78194_
        (let ((_g78193_ (let () (declare (not safe)) (##length _g78194_))))
          (cond ((let () (declare (not safe)) (##fx= _g78193_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__0)))
                        _g78194_))
                ((let () (declare (not safe)) (##fx= _g78193_ 1))
                 (apply (lambda (_manifest74135_)
                          (let ()
                            (declare (not safe))
                            (build-manifest-string__% _manifest74135_)))
                        _g78194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g78194_))))))
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
        (let ((_$e74119_ (getenv '"GERBIL_HOME" '#f)))
          (if _$e74119_ _$e74119_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_$e74115_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e74115_ _$e74115_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp78195 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp78195 '#\')))))))
