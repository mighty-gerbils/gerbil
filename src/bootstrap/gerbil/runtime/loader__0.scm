(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708202846)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath117314_ _reload?117315_)
        (let ((_$e117317_
               (if (let () (declare (not safe)) (not _reload?117315_))
                   (let ((__tmp121403 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp121403 _modpath117314_))
                   '#f)))
          (if _$e117317_
              _$e117317_
              (let ((_$e117320_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath117314_))))
                (if _$e117320_
                    ((lambda (_path117323_)
                       (let ((_lpath117325_ (load _path117323_)))
                         (let ((__tmp121404 (current-module-registry)))
                           (declare (not safe))
                           (table-set!
                            __tmp121404
                            _modpath117314_
                            _lpath117325_))
                         _lpath117325_))
                     _$e117320_)
                    (error '"module not found" _modpath117314_)))))))
    (define load-module__0
      (lambda (_modpath117330_)
        (let ((_reload?117332_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath117330_ _reload?117332_))))
    (define load-module
      (lambda _g121406_
        (let ((_g121405_ (let () (declare (not safe)) (##length _g121406_))))
          (cond ((let () (declare (not safe)) (##fx= _g121405_ 1))
                 (apply (lambda (_modpath117330_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath117330_)))
                        _g121406_))
                ((let () (declare (not safe)) (##fx= _g121405_ 2))
                 (apply (lambda (_modpath117334_ _reload?117335_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath117334_ _reload?117335_)))
                        _g121406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g121406_))))))
    (define find-library-module
      (lambda (_modpath117248_)
        (letrec ((_find-compiled-file117250_
                  (lambda (_npath117302_)
                    (let ((_basepath117304_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath117302_ '".o"))))
                      (let _lp117306_ ((_current117308_ '#f) (_n117309_ '1))
                        (let ((_next117311_
                               (let ((__tmp121407 (number->string _n117309_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath117304_
                                  __tmp121407))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next117311_))
                              (let ((__tmp121408
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n117309_ '1))))
                                (declare (not safe))
                                (_lp117306_ _next117311_ __tmp121408))
                              _current117308_))))))
                 (_find-source-file117251_
                  (lambda (_npath117298_)
                    (let ((_spath117300_
                           (string-append _npath117298_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath117300_))
                          _spath117300_
                          '#f)))))
          (let _lp117253_ ((_rest117255_ (current-module-library-path)))
            (let* ((_rest117256117264_ _rest117255_)
                   (_else117258117272_ (lambda () '#f))
                   (_K117260117286_
                    (lambda (_rest117275_ _dir117276_)
                      (let* ((_npath117278_
                              (path-expand
                               _modpath117248_
                               (path-expand _dir117276_)))
                             (_$e117280_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file117250_ _npath117278_))))
                        (if _$e117280_
                            (path-normalize _$e117280_)
                            (let ((_$e117283_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file117251_
                                      _npath117278_))))
                              (if _$e117283_
                                  (path-normalize _$e117283_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp117253_ _rest117275_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest117256117264_))
                  (let ((_hd117261117289_
                         (let ()
                           (declare (not safe))
                           (##car _rest117256117264_)))
                        (_tl117262117291_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest117256117264_))))
                    (let* ((_dir117294_ _hd117261117289_)
                           (_rest117296_ _tl117262117291_))
                      (declare (not safe))
                      (_K117260117286_ _rest117296_ _dir117294_)))
                  (let () (declare (not safe)) (_else117258117272_))))))))))
