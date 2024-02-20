(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1708418154)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath77467_ _reload?77468_)
        (let ((_$e77470_
               (if (let () (declare (not safe)) (not _reload?77468_))
                   (let ((__tmp77489 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp77489 _modpath77467_))
                   '#f)))
          (if _$e77470_
              _$e77470_
              (let ((_$e77473_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath77467_))))
                (if _$e77473_
                    ((lambda (_path77476_)
                       (let ((_lpath77478_ (load _path77476_)))
                         (let ((__tmp77490 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp77490 _modpath77467_ _lpath77478_))
                         _lpath77478_))
                     _$e77473_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath77467_))))))))
    (define load-module__0
      (lambda (_modpath77483_)
        (let ((_reload?77485_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath77483_ _reload?77485_))))
    (define load-module
      (lambda _g77492_
        (let ((_g77491_ (let () (declare (not safe)) (##length _g77492_))))
          (cond ((let () (declare (not safe)) (##fx= _g77491_ 1))
                 (apply (lambda (_modpath77483_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath77483_)))
                        _g77492_))
                ((let () (declare (not safe)) (##fx= _g77491_ 2))
                 (apply (lambda (_modpath77487_ _reload?77488_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath77487_ _reload?77488_)))
                        _g77492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g77492_))))))
    (define find-library-module
      (lambda (_modpath77401_)
        (letrec ((_find-compiled-file77403_
                  (lambda (_npath77455_)
                    (let ((_basepath77457_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath77455_ '".o"))))
                      (let _lp77459_ ((_current77461_ '#f) (_n77462_ '1))
                        (let ((_next77464_
                               (let ((__tmp77493 (number->string _n77462_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath77457_
                                  __tmp77493))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next77464_))
                              (let ((__tmp77494
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n77462_ '1))))
                                (declare (not safe))
                                (_lp77459_ _next77464_ __tmp77494))
                              _current77461_))))))
                 (_find-source-file77404_
                  (lambda (_npath77451_)
                    (let ((_spath77453_ (string-append _npath77451_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath77453_))
                          _spath77453_
                          '#f)))))
          (let _lp77406_ ((_rest77408_ (current-module-library-path)))
            (let* ((_rest7740977417_ _rest77408_)
                   (_else7741177425_ (lambda () '#f))
                   (_K7741377439_
                    (lambda (_rest77428_ _dir77429_)
                      (let* ((_npath77431_
                              (path-expand
                               _modpath77401_
                               (path-expand _dir77429_)))
                             (_$e77433_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file77403_ _npath77431_))))
                        (if _$e77433_
                            (path-normalize _$e77433_)
                            (let ((_$e77436_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file77404_ _npath77431_))))
                              (if _$e77436_
                                  (path-normalize _$e77436_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp77406_ _rest77428_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7740977417_))
                  (let ((_hd7741477442_
                         (let ()
                           (declare (not safe))
                           (##car _rest7740977417_)))
                        (_tl7741577444_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7740977417_))))
                    (let* ((_dir77447_ _hd7741477442_)
                           (_rest77449_ _tl7741577444_))
                      (declare (not safe))
                      (_K7741377439_ _rest77449_ _dir77447_)))
                  (let () (declare (not safe)) (_else7741177425_))))))))))
