(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707384293)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath68308_ _reload?68309_)
        (let ((_$e68311_
               (if (let () (declare (not safe)) (not _reload?68309_))
                   (let ((__tmp72524 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp72524 _modpath68308_ '#f))
                   '#f)))
          (if _$e68311_
              _$e68311_
              (let ((_$e68314_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath68308_))))
                (if _$e68314_
                    ((lambda (_path68317_)
                       (let ((_lpath68319_ (load _path68317_)))
                         (let ((__tmp72525 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp72525 _modpath68308_ _lpath68319_))
                         _lpath68319_))
                     _$e68314_)
                    (error '"module not found" _modpath68308_)))))))
    (define load-module__0
      (lambda (_modpath68324_)
        (let ((_reload?68326_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath68324_ _reload?68326_))))
    (define load-module
      (lambda _g72527_
        (let ((_g72526_ (let () (declare (not safe)) (##length _g72527_))))
          (cond ((let () (declare (not safe)) (##fx= _g72526_ 1))
                 (apply (lambda (_modpath68324_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath68324_)))
                        _g72527_))
                ((let () (declare (not safe)) (##fx= _g72526_ 2))
                 (apply (lambda (_modpath68328_ _reload?68329_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath68328_ _reload?68329_)))
                        _g72527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g72527_))))))
    (define find-library-module
      (lambda (_modpath68242_)
        (letrec ((_find-compiled-file68244_
                  (lambda (_npath68296_)
                    (let ((_basepath68298_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath68296_ '".o"))))
                      (let _lp68300_ ((_current68302_ '#f) (_n68303_ '1))
                        (let ((_next68305_
                               (let ((__tmp72528 (number->string _n68303_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath68298_
                                  __tmp72528))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next68305_))
                              (let ((__tmp72529
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n68303_ '1))))
                                (declare (not safe))
                                (_lp68300_ _next68305_ __tmp72529))
                              _current68302_))))))
                 (_find-source-file68245_
                  (lambda (_npath68292_)
                    (let ((_spath68294_ (string-append _npath68292_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath68294_))
                          _spath68294_
                          '#f)))))
          (let _lp68247_ ((_rest68249_ (current-module-library-path)))
            (let* ((_rest6825068258_ _rest68249_)
                   (_else6825268266_ (lambda () '#f))
                   (_K6825468280_
                    (lambda (_rest68269_ _dir68270_)
                      (let* ((_npath68272_
                              (path-expand
                               _modpath68242_
                               (path-expand _dir68270_)))
                             (_$e68274_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file68244_ _npath68272_))))
                        (if _$e68274_
                            (path-normalize _$e68274_)
                            (let ((_$e68277_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file68245_ _npath68272_))))
                              (if _$e68277_
                                  (path-normalize _$e68277_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp68247_ _rest68269_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6825068258_))
                  (let ((_hd6825568283_
                         (let ()
                           (declare (not safe))
                           (##car _rest6825068258_)))
                        (_tl6825668285_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6825068258_))))
                    (let* ((_dir68288_ _hd6825568283_)
                           (_rest68290_ _tl6825668285_))
                      (declare (not safe))
                      (_K6825468280_ _rest68290_ _dir68288_)))
                  (let () (declare (not safe)) (_else6825268266_))))))))))
