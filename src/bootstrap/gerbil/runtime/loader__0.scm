(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1709111635)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath78038_ _reload?78039_)
        (let ((_$e78041_
               (if (let () (declare (not safe)) (not _reload?78039_))
                   (let ((__tmp78060 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp78060 _modpath78038_))
                   '#f)))
          (if _$e78041_
              _$e78041_
              (let ((_$e78044_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath78038_))))
                (if _$e78044_
                    ((lambda (_path78047_)
                       (let ((_lpath78049_ (load _path78047_)))
                         (let ((__tmp78061 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp78061 _modpath78038_ _lpath78049_))
                         _lpath78049_))
                     _$e78044_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath78038_))))))))
    (define load-module__0
      (lambda (_modpath78054_)
        (let ((_reload?78056_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath78054_ _reload?78056_))))
    (define load-module
      (lambda _g78063_
        (let ((_g78062_ (let () (declare (not safe)) (##length _g78063_))))
          (cond ((let () (declare (not safe)) (##fx= _g78062_ 1))
                 (apply (lambda (_modpath78054_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath78054_)))
                        _g78063_))
                ((let () (declare (not safe)) (##fx= _g78062_ 2))
                 (apply (lambda (_modpath78058_ _reload?78059_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath78058_ _reload?78059_)))
                        _g78063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g78063_))))))
    (define find-library-module
      (lambda (_modpath77972_)
        (letrec ((_find-compiled-file77974_
                  (lambda (_npath78026_)
                    (let ((_basepath78028_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath78026_ '".o"))))
                      (let _lp78030_ ((_current78032_ '#f) (_n78033_ '1))
                        (let ((_next78035_
                               (let ((__tmp78064 (number->string _n78033_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath78028_
                                  __tmp78064))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next78035_))
                              (let ((__tmp78065
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n78033_ '1))))
                                (declare (not safe))
                                (_lp78030_ _next78035_ __tmp78065))
                              _current78032_))))))
                 (_find-source-file77975_
                  (lambda (_npath78022_)
                    (let ((_spath78024_ (string-append _npath78022_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath78024_))
                          _spath78024_
                          '#f)))))
          (let _lp77977_ ((_rest77979_ (current-module-library-path)))
            (let* ((_rest7798077988_ _rest77979_)
                   (_else7798277996_ (lambda () '#f))
                   (_K7798478010_
                    (lambda (_rest77999_ _dir78000_)
                      (let* ((_npath78002_
                              (path-expand
                               _modpath77972_
                               (path-expand _dir78000_)))
                             (_$e78004_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file77974_ _npath78002_))))
                        (if _$e78004_
                            (path-normalize _$e78004_)
                            (let ((_$e78007_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file77975_ _npath78002_))))
                              (if _$e78007_
                                  (path-normalize _$e78007_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp77977_ _rest77999_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7798077988_))
                  (let ((_hd7798578013_
                         (let ()
                           (declare (not safe))
                           (##car _rest7798077988_)))
                        (_tl7798678015_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7798077988_))))
                    (let* ((_dir78018_ _hd7798578013_)
                           (_rest78020_ _tl7798678015_))
                      (declare (not safe))
                      (_K7798478010_ _rest78020_ _dir78018_)))
                  (let () (declare (not safe)) (_else7798277996_))))))))))
