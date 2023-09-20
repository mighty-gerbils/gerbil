(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1695206877)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath8035_ _reload?8036_)
        (let ((_$e8038_
               (if (not _reload?8036_)
                   (table-ref (current-module-registry) _modpath8035_ '#f)
                   '#f)))
          (if _$e8038_
              _$e8038_
              (let ((_$e8041_ (find-library-module _modpath8035_)))
                (if _$e8041_
                    ((lambda (_path8044_)
                       (let ((_lpath8046_ (load _path8044_)))
                         (table-set!
                          (current-module-registry)
                          _modpath8035_
                          _lpath8046_)
                         _lpath8046_))
                     _$e8041_)
                    (error '"module not found" _modpath8035_)))))))
    (define load-module__0
      (lambda (_modpath8051_)
        (let ((_reload?8053_ (__reload-module)))
          (load-module__% _modpath8051_ _reload?8053_))))
    (define load-module
      (lambda _g8058_
        (let ((_g8057_ (let () (declare (not safe)) (##length _g8058_))))
          (cond ((let () (declare (not safe)) (##fx= _g8057_ 1))
                 (apply load-module__0 _g8058_))
                ((let () (declare (not safe)) (##fx= _g8057_ 2))
                 (apply load-module__% _g8058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g8058_))))))
    (define find-library-module
      (lambda (_modpath7969_)
        (letrec ((_find-compiled-file7971_
                  (lambda (_npath8023_)
                    (let ((_basepath8025_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath8023_ '".o"))))
                      (let _lp8027_ ((_current8029_ '#f) (_n8030_ '1))
                        (let ((_next8032_
                               (let ((__tmp8059 (number->string _n8030_)))
                                 (declare (not safe))
                                 (##string-append _basepath8025_ __tmp8059))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next8032_))
                              (_lp8027_
                               _next8032_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _n8030_ '1)))
                              _current8029_))))))
                 (_find-source-file7972_
                  (lambda (_npath8019_)
                    (let ((_spath8021_ (string-append _npath8019_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath8021_))
                          _spath8021_
                          '#f)))))
          (let _lp7974_ ((_rest7976_ (current-module-library-path)))
            (let* ((_rest79777985_ _rest7976_)
                   (_else79797993_ (lambda () '#f))
                   (_K79818007_
                    (lambda (_rest7996_ _dir7997_)
                      (let* ((_npath7999_
                              (path-expand
                               _modpath7969_
                               (path-expand _dir7997_)))
                             (_$e8001_ (_find-compiled-file7971_ _npath7999_)))
                        (if _$e8001_
                            (path-normalize _$e8001_)
                            (let ((_$e8004_
                                   (_find-source-file7972_ _npath7999_)))
                              (if _$e8004_
                                  (path-normalize _$e8004_)
                                  (_lp7974_ _rest7996_))))))))
              (if (let () (declare (not safe)) (##pair? _rest79777985_))
                  (let ((_hd79828010_
                         (let () (declare (not safe)) (##car _rest79777985_)))
                        (_tl79838012_
                         (let () (declare (not safe)) (##cdr _rest79777985_))))
                    (let* ((_dir8015_ _hd79828010_) (_rest8017_ _tl79838012_))
                      (_K79818007_ _rest8017_ _dir8015_)))
                  (_else79797993_)))))))))
