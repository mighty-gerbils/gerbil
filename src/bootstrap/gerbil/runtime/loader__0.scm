(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1710064746)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath75415_ _reload?75416_)
        (let ((_$e75418_
               (if (let () (declare (not safe)) (not _reload?75416_))
                   (let ((__tmp75437 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp75437 _modpath75415_))
                   '#f)))
          (if _$e75418_
              _$e75418_
              (let ((_$e75421_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath75415_))))
                (if _$e75421_
                    ((lambda (_path75424_)
                       (let ((_lpath75426_ (load _path75424_)))
                         (let ((__tmp75438 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp75438 _modpath75415_ _lpath75426_))
                         _lpath75426_))
                     _$e75421_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath75415_))))))))
    (define load-module__0
      (lambda (_modpath75431_)
        (let ((_reload?75433_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath75431_ _reload?75433_))))
    (define load-module
      (lambda _g75440_
        (let ((_g75439_ (let () (declare (not safe)) (##length _g75440_))))
          (cond ((let () (declare (not safe)) (##fx= _g75439_ 1))
                 (apply (lambda (_modpath75431_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath75431_)))
                        _g75440_))
                ((let () (declare (not safe)) (##fx= _g75439_ 2))
                 (apply (lambda (_modpath75435_ _reload?75436_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath75435_ _reload?75436_)))
                        _g75440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g75440_))))))
    (define find-library-module
      (lambda (_modpath75349_)
        (letrec ((_find-compiled-file75351_
                  (lambda (_npath75403_)
                    (let ((_basepath75405_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath75403_ '".o"))))
                      (let _lp75407_ ((_current75409_ '#f) (_n75410_ '1))
                        (let ((_next75412_
                               (let ((__tmp75441 (number->string _n75410_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath75405_
                                  __tmp75441))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next75412_))
                              (let ((__tmp75442
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n75410_ '1))))
                                (declare (not safe))
                                (_lp75407_ _next75412_ __tmp75442))
                              _current75409_))))))
                 (_find-source-file75352_
                  (lambda (_npath75399_)
                    (let ((_spath75401_ (string-append _npath75399_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath75401_))
                          _spath75401_
                          '#f)))))
          (let _lp75354_ ((_rest75356_ (current-module-library-path)))
            (let* ((_rest7535775365_ _rest75356_)
                   (_else7535975373_ (lambda () '#f))
                   (_K7536175387_
                    (lambda (_rest75376_ _dir75377_)
                      (let* ((_npath75379_
                              (path-expand
                               _modpath75349_
                               (path-expand _dir75377_)))
                             (_$e75381_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file75351_ _npath75379_))))
                        (if _$e75381_
                            (path-normalize _$e75381_)
                            (let ((_$e75384_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file75352_ _npath75379_))))
                              (if _$e75384_
                                  (path-normalize _$e75384_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp75354_ _rest75376_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7535775365_))
                  (let ((_hd7536275390_
                         (let ()
                           (declare (not safe))
                           (##car _rest7535775365_)))
                        (_tl7536375392_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7535775365_))))
                    (let* ((_dir75395_ _hd7536275390_)
                           (_rest75397_ _tl7536375392_))
                      (declare (not safe))
                      (_K7536175387_ _rest75397_ _dir75395_)))
                  (let () (declare (not safe)) (_else7535975373_))))))))))
