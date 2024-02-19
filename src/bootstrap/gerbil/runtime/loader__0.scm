(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708343716)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath77386_ _reload?77387_)
        (let ((_$e77389_
               (if (let () (declare (not safe)) (not _reload?77387_))
                   (let ((__tmp77408 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp77408 _modpath77386_))
                   '#f)))
          (if _$e77389_
              _$e77389_
              (let ((_$e77392_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath77386_))))
                (if _$e77392_
                    ((lambda (_path77395_)
                       (let ((_lpath77397_ (load _path77395_)))
                         (let ((__tmp77409 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp77409 _modpath77386_ _lpath77397_))
                         _lpath77397_))
                     _$e77392_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath77386_))))))))
    (define load-module__0
      (lambda (_modpath77402_)
        (let ((_reload?77404_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath77402_ _reload?77404_))))
    (define load-module
      (lambda _g77411_
        (let ((_g77410_ (let () (declare (not safe)) (##length _g77411_))))
          (cond ((let () (declare (not safe)) (##fx= _g77410_ 1))
                 (apply (lambda (_modpath77402_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath77402_)))
                        _g77411_))
                ((let () (declare (not safe)) (##fx= _g77410_ 2))
                 (apply (lambda (_modpath77406_ _reload?77407_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath77406_ _reload?77407_)))
                        _g77411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g77411_))))))
    (define find-library-module
      (lambda (_modpath77320_)
        (letrec ((_find-compiled-file77322_
                  (lambda (_npath77374_)
                    (let ((_basepath77376_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath77374_ '".o"))))
                      (let _lp77378_ ((_current77380_ '#f) (_n77381_ '1))
                        (let ((_next77383_
                               (let ((__tmp77412 (number->string _n77381_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath77376_
                                  __tmp77412))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next77383_))
                              (let ((__tmp77413
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n77381_ '1))))
                                (declare (not safe))
                                (_lp77378_ _next77383_ __tmp77413))
                              _current77380_))))))
                 (_find-source-file77323_
                  (lambda (_npath77370_)
                    (let ((_spath77372_ (string-append _npath77370_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath77372_))
                          _spath77372_
                          '#f)))))
          (let _lp77325_ ((_rest77327_ (current-module-library-path)))
            (let* ((_rest7732877336_ _rest77327_)
                   (_else7733077344_ (lambda () '#f))
                   (_K7733277358_
                    (lambda (_rest77347_ _dir77348_)
                      (let* ((_npath77350_
                              (path-expand
                               _modpath77320_
                               (path-expand _dir77348_)))
                             (_$e77352_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file77322_ _npath77350_))))
                        (if _$e77352_
                            (path-normalize _$e77352_)
                            (let ((_$e77355_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file77323_ _npath77350_))))
                              (if _$e77355_
                                  (path-normalize _$e77355_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp77325_ _rest77347_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7732877336_))
                  (let ((_hd7733377361_
                         (let ()
                           (declare (not safe))
                           (##car _rest7732877336_)))
                        (_tl7733477363_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7732877336_))))
                    (let* ((_dir77366_ _hd7733377361_)
                           (_rest77368_ _tl7733477363_))
                      (declare (not safe))
                      (_K7733277358_ _rest77368_ _dir77366_)))
                  (let () (declare (not safe)) (_else7733077344_))))))))))
