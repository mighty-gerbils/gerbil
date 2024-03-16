(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1710617601)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath76865_ _reload?76866_)
        (let ((_$e76868_
               (if (let () (declare (not safe)) (not _reload?76866_))
                   (let ((__tmp76887 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp76887 _modpath76865_))
                   '#f)))
          (if _$e76868_
              _$e76868_
              (let ((_$e76871_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath76865_))))
                (if _$e76871_
                    ((lambda (_path76874_)
                       (let ((_lpath76876_ (load _path76874_)))
                         (let ((__tmp76888 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp76888 _modpath76865_ _lpath76876_))
                         _lpath76876_))
                     _$e76871_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath76865_))))))))
    (define load-module__0
      (lambda (_modpath76881_)
        (let ((_reload?76883_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath76881_ _reload?76883_))))
    (define load-module
      (lambda _g76890_
        (let ((_g76889_ (let () (declare (not safe)) (##length _g76890_))))
          (cond ((let () (declare (not safe)) (##fx= _g76889_ 1))
                 (apply (lambda (_modpath76881_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath76881_)))
                        _g76890_))
                ((let () (declare (not safe)) (##fx= _g76889_ 2))
                 (apply (lambda (_modpath76885_ _reload?76886_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath76885_ _reload?76886_)))
                        _g76890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g76890_))))))
    (define find-library-module
      (lambda (_modpath76799_)
        (letrec ((_find-compiled-file76801_
                  (lambda (_npath76853_)
                    (let ((_basepath76855_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath76853_ '".o"))))
                      (let _lp76857_ ((_current76859_ '#f) (_n76860_ '1))
                        (let ((_next76862_
                               (let ((__tmp76891 (number->string _n76860_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath76855_
                                  __tmp76891))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next76862_))
                              (let ((__tmp76892
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n76860_ '1))))
                                (declare (not safe))
                                (_lp76857_ _next76862_ __tmp76892))
                              _current76859_))))))
                 (_find-source-file76802_
                  (lambda (_npath76849_)
                    (let ((_spath76851_ (string-append _npath76849_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath76851_))
                          _spath76851_
                          '#f)))))
          (let _lp76804_ ((_rest76806_ (current-module-library-path)))
            (let* ((_rest7680776815_ _rest76806_)
                   (_else7680976823_ (lambda () '#f))
                   (_K7681176837_
                    (lambda (_rest76826_ _dir76827_)
                      (let* ((_npath76829_
                              (path-expand
                               _modpath76799_
                               (path-expand _dir76827_)))
                             (_$e76831_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file76801_ _npath76829_))))
                        (if _$e76831_
                            (path-normalize _$e76831_)
                            (let ((_$e76834_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file76802_ _npath76829_))))
                              (if _$e76834_
                                  (path-normalize _$e76834_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp76804_ _rest76826_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7680776815_))
                  (let ((_hd7681276840_
                         (let ()
                           (declare (not safe))
                           (##car _rest7680776815_)))
                        (_tl7681376842_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7680776815_))))
                    (let* ((_dir76845_ _hd7681276840_)
                           (_rest76847_ _tl7681376842_))
                      (declare (not safe))
                      (_K7681176837_ _rest76847_ _dir76845_)))
                  (let () (declare (not safe)) (_else7680976823_))))))))))
