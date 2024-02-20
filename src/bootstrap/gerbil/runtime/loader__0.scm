(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708451992)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath75034_ _reload?75035_)
        (let ((_$e75037_
               (if (let () (declare (not safe)) (not _reload?75035_))
                   (let ((__tmp75056 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp75056 _modpath75034_))
                   '#f)))
          (if _$e75037_
              _$e75037_
              (let ((_$e75040_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath75034_))))
                (if _$e75040_
                    ((lambda (_path75043_)
                       (let ((_lpath75045_ (load _path75043_)))
                         (let ((__tmp75057 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp75057 _modpath75034_ _lpath75045_))
                         _lpath75045_))
                     _$e75040_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath75034_))))))))
    (define load-module__0
      (lambda (_modpath75050_)
        (let ((_reload?75052_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath75050_ _reload?75052_))))
    (define load-module
      (lambda _g75059_
        (let ((_g75058_ (let () (declare (not safe)) (##length _g75059_))))
          (cond ((let () (declare (not safe)) (##fx= _g75058_ 1))
                 (apply (lambda (_modpath75050_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath75050_)))
                        _g75059_))
                ((let () (declare (not safe)) (##fx= _g75058_ 2))
                 (apply (lambda (_modpath75054_ _reload?75055_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath75054_ _reload?75055_)))
                        _g75059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g75059_))))))
    (define find-library-module
      (lambda (_modpath74968_)
        (letrec ((_find-compiled-file74970_
                  (lambda (_npath75022_)
                    (let ((_basepath75024_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath75022_ '".o"))))
                      (let _lp75026_ ((_current75028_ '#f) (_n75029_ '1))
                        (let ((_next75031_
                               (let ((__tmp75060 (number->string _n75029_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath75024_
                                  __tmp75060))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next75031_))
                              (let ((__tmp75061
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n75029_ '1))))
                                (declare (not safe))
                                (_lp75026_ _next75031_ __tmp75061))
                              _current75028_))))))
                 (_find-source-file74971_
                  (lambda (_npath75018_)
                    (let ((_spath75020_ (string-append _npath75018_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath75020_))
                          _spath75020_
                          '#f)))))
          (let _lp74973_ ((_rest74975_ (current-module-library-path)))
            (let* ((_rest7497674984_ _rest74975_)
                   (_else7497874992_ (lambda () '#f))
                   (_K7498075006_
                    (lambda (_rest74995_ _dir74996_)
                      (let* ((_npath74998_
                              (path-expand
                               _modpath74968_
                               (path-expand _dir74996_)))
                             (_$e75000_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file74970_ _npath74998_))))
                        (if _$e75000_
                            (path-normalize _$e75000_)
                            (let ((_$e75003_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file74971_ _npath74998_))))
                              (if _$e75003_
                                  (path-normalize _$e75003_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp74973_ _rest74995_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7497674984_))
                  (let ((_hd7498175009_
                         (let ()
                           (declare (not safe))
                           (##car _rest7497674984_)))
                        (_tl7498275011_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7497674984_))))
                    (let* ((_dir75014_ _hd7498175009_)
                           (_rest75016_ _tl7498275011_))
                      (declare (not safe))
                      (_K7498075006_ _rest75016_ _dir75014_)))
                  (let () (declare (not safe)) (_else7497874992_))))))))))
