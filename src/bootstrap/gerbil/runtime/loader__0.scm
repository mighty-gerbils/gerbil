(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1707830007)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath69753_ _reload?69754_)
        (let ((_$e69756_
               (if (let () (declare (not safe)) (not _reload?69754_))
                   (let ((__tmp74343 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp74343 _modpath69753_ '#f))
                   '#f)))
          (if _$e69756_
              _$e69756_
              (let ((_$e69759_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath69753_))))
                (if _$e69759_
                    ((lambda (_path69762_)
                       (let ((_lpath69764_ (load _path69762_)))
                         (let ((__tmp74344 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp74344 _modpath69753_ _lpath69764_))
                         _lpath69764_))
                     _$e69759_)
                    (error '"module not found" _modpath69753_)))))))
    (define load-module__0
      (lambda (_modpath69769_)
        (let ((_reload?69771_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath69769_ _reload?69771_))))
    (define load-module
      (lambda _g74346_
        (let ((_g74345_ (let () (declare (not safe)) (##length _g74346_))))
          (cond ((let () (declare (not safe)) (##fx= _g74345_ 1))
                 (apply (lambda (_modpath69769_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath69769_)))
                        _g74346_))
                ((let () (declare (not safe)) (##fx= _g74345_ 2))
                 (apply (lambda (_modpath69773_ _reload?69774_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath69773_ _reload?69774_)))
                        _g74346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g74346_))))))
    (define find-library-module
      (lambda (_modpath69687_)
        (letrec ((_find-compiled-file69689_
                  (lambda (_npath69741_)
                    (let ((_basepath69743_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath69741_ '".o"))))
                      (let _lp69745_ ((_current69747_ '#f) (_n69748_ '1))
                        (let ((_next69750_
                               (let ((__tmp74347 (number->string _n69748_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath69743_
                                  __tmp74347))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next69750_))
                              (let ((__tmp74348
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n69748_ '1))))
                                (declare (not safe))
                                (_lp69745_ _next69750_ __tmp74348))
                              _current69747_))))))
                 (_find-source-file69690_
                  (lambda (_npath69737_)
                    (let ((_spath69739_ (string-append _npath69737_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath69739_))
                          _spath69739_
                          '#f)))))
          (let _lp69692_ ((_rest69694_ (current-module-library-path)))
            (let* ((_rest6969569703_ _rest69694_)
                   (_else6969769711_ (lambda () '#f))
                   (_K6969969725_
                    (lambda (_rest69714_ _dir69715_)
                      (let* ((_npath69717_
                              (path-expand
                               _modpath69687_
                               (path-expand _dir69715_)))
                             (_$e69719_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file69689_ _npath69717_))))
                        (if _$e69719_
                            (path-normalize _$e69719_)
                            (let ((_$e69722_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file69690_ _npath69717_))))
                              (if _$e69722_
                                  (path-normalize _$e69722_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp69692_ _rest69714_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6969569703_))
                  (let ((_hd6970069728_
                         (let ()
                           (declare (not safe))
                           (##car _rest6969569703_)))
                        (_tl6970169730_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6969569703_))))
                    (let* ((_dir69733_ _hd6970069728_)
                           (_rest69735_ _tl6970169730_))
                      (declare (not safe))
                      (_K6969969725_ _rest69735_ _dir69733_)))
                  (let () (declare (not safe)) (_else6969769711_))))))))))
