(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1695292370)
  (begin
    (define current-module-library-path
      (let () (declare (not safe)) (make-parameter '#f)))
    (define current-module-registry
      (let () (declare (not safe)) (make-parameter '#f)))
    (define __reload-module (let () (declare (not safe)) (make-parameter '#f)))
    (define load-module__%
      (lambda (_modpath8303_ _reload?8304_)
        (let ((_$e8306_
               (if (let () (declare (not safe)) (not _reload?8304_))
                   (let ((__tmp8325 (current-module-registry)))
                     (declare (not safe))
                     (table-ref __tmp8325 _modpath8303_ '#f))
                   '#f)))
          (if _$e8306_
              _$e8306_
              (let ((_$e8309_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath8303_))))
                (if _$e8309_
                    ((lambda (_path8312_)
                       (let ((_lpath8314_
                              (let () (declare (not safe)) (load _path8312_))))
                         (let ((__tmp8326 (current-module-registry)))
                           (declare (not safe))
                           (table-set! __tmp8326 _modpath8303_ _lpath8314_))
                         _lpath8314_))
                     _$e8309_)
                    (error '"module not found" _modpath8303_)))))))
    (define load-module__0
      (lambda (_modpath8319_)
        (let ((_reload?8321_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath8319_ _reload?8321_))))
    (define load-module
      (lambda _g8328_
        (let ((_g8327_ (let () (declare (not safe)) (##length _g8328_))))
          (cond ((let () (declare (not safe)) (##fx= _g8327_ 1))
                 (apply (lambda (_modpath8319_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath8319_)))
                        _g8328_))
                ((let () (declare (not safe)) (##fx= _g8327_ 2))
                 (apply (lambda (_modpath8323_ _reload?8324_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath8323_ _reload?8324_)))
                        _g8328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g8328_))))))
    (define find-library-module
      (lambda (_modpath8237_)
        (letrec ((_find-compiled-file8239_
                  (lambda (_npath8291_)
                    (let ((_basepath8293_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath8291_ '".o"))))
                      (let _lp8295_ ((_current8297_ '#f) (_n8298_ '1))
                        (let ((_next8300_
                               (let ((__tmp8329
                                      (let ()
                                        (declare (not safe))
                                        (number->string _n8298_))))
                                 (declare (not safe))
                                 (##string-append _basepath8293_ __tmp8329))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next8300_))
                              (let ((__tmp8330
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n8298_ '1))))
                                (declare (not safe))
                                (_lp8295_ _next8300_ __tmp8330))
                              _current8297_))))))
                 (_find-source-file8240_
                  (lambda (_npath8287_)
                    (let ((_spath8289_ (string-append _npath8287_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath8289_))
                          _spath8289_
                          '#f)))))
          (let _lp8242_ ((_rest8244_ (current-module-library-path)))
            (let* ((_rest82458253_ _rest8244_)
                   (_else82478261_ (lambda () '#f))
                   (_K82498275_
                    (lambda (_rest8264_ _dir8265_)
                      (let* ((_npath8267_
                              (let ((__tmp8331
                                     (let ()
                                       (declare (not safe))
                                       (path-expand _dir8265_))))
                                (declare (not safe))
                                (path-expand _modpath8237_ __tmp8331)))
                             (_$e8269_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file8239_ _npath8267_))))
                        (if _$e8269_
                            (let ()
                              (declare (not safe))
                              (path-normalize _$e8269_))
                            (let ((_$e8272_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file8240_ _npath8267_))))
                              (if _$e8272_
                                  (let ()
                                    (declare (not safe))
                                    (path-normalize _$e8272_))
                                  (let ()
                                    (declare (not safe))
                                    (_lp8242_ _rest8264_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest82458253_))
                  (let ((_hd82508278_
                         (let () (declare (not safe)) (##car _rest82458253_)))
                        (_tl82518280_
                         (let () (declare (not safe)) (##cdr _rest82458253_))))
                    (let* ((_dir8283_ _hd82508278_) (_rest8285_ _tl82518280_))
                      (declare (not safe))
                      (_K82498275_ _rest8285_ _dir8283_)))
                  (let () (declare (not safe)) (_else82478261_))))))))))
